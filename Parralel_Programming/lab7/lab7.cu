#include <wb.h>

#define HISTOGRAM_LENGTH 256

//@@ insert code here


__global__ void convertFloatChar(float* inputImage, unsigned char* outputImage, int imgLenght) {

  int idx = blockIdx.x * blockDim.x + threadIdx.x;

  if(idx < imgLenght) {
    outputImage[idx] = (unsigned char) (255 * inputImage[idx]);
  }
}

__global__ void convertCharFloat(unsigned char* inputImage, float* outputImage, int imgLenght) {

  int idx = blockIdx.x * blockDim.x + threadIdx.x;

  if(idx < imgLenght) {
    outputImage[idx] = (float) (inputImage[idx] / 255.0);
  }
}

__global__ void RGBToGrayScale(unsigned char* rgbImage, unsigned char* grayscaleImage, int imgLenght) {

  int idx = blockIdx.x * blockDim.x + threadIdx.x;
  int r,g,b;

  if(idx < imgLenght) {
    r = rgbImage[3*idx];
		g = rgbImage[3*idx + 1];
		b = rgbImage[3*idx + 2];
		grayscaleImage[idx] = (unsigned char) (0.21*r + 0.71*g + 0.07*b);
  }
}

__global__ void computeHistogram(unsigned char* buffer, unsigned int* histo, int size) {

  int i = threadIdx.x + blockIdx.x * blockDim.x;
  
  __shared__ unsigned int histo_private[256];
  if (threadIdx.x < 256) {
    histo_private[threadIdx.x] = 0;
  }
  __syncthreads();

  if (i < size) {
    atomicAdd(&(histo_private[buffer[i]]), 1);
  }
  __syncthreads();

  if (threadIdx.x < 256) {
    atomicAdd(&(histo[threadIdx.x]),histo_private[threadIdx.x]);
  }
}

__global__ void histoEqualization(float* cdf, unsigned char* outputImg, int length) {
  int i = threadIdx.x + blockIdx.x * blockDim.x;

  if(i < length) {
    float val = 255*(cdf[outputImg[i]] - cdf[0])/(1.0 - cdf[0]);
    float clamp = min(max(val,0.0f),255.0f);
    outputImg[i] = clamp;
  }
}

int main(int argc, char **argv) {
  wbArg_t args;
  int imageWidth;
  int imageHeight;
  int imageChannels;
  wbImage_t inputImage;
  wbImage_t outputImage;
  float *hostInputImageData;
  float *hostOutputImageData;
  const char *inputImageFile;

  // Device Init 
  float *deviceInputImageData;
  float *deviceOutputImageData;
  unsigned char *deviceUnsignedImageData;
  unsigned char *deviceRGBGrayscaleData;
  unsigned int *deviceHistogram;
  unsigned int *hostHistogram;
  float *deviceCdf;
  float *hostCdf;


  args = wbArg_read(argc, argv); /* parse the input arguments */

  inputImageFile = wbArg_getInputFile(args, 0);

  //Import data and create memory on host
  inputImage = wbImport(inputImageFile);
  imageWidth = wbImage_getWidth(inputImage);
  imageHeight = wbImage_getHeight(inputImage);
  imageChannels = wbImage_getChannels(inputImage);
  outputImage = wbImage_new(imageWidth, imageHeight, imageChannels);

  hostInputImageData = inputImage->data;

  //@@ insert code here
  int size = imageWidth*imageHeight*imageChannels;
  int grayscaleSize = imageWidth*imageHeight;
  int dimBlockSize = ceil((1.0*size) / HISTOGRAM_LENGTH);

  cudaMalloc((void**) &deviceInputImageData, sizeof(float) * size);
  cudaMalloc((void**) &deviceOutputImageData, sizeof(float) * size);
  cudaMalloc((void**) &deviceUnsignedImageData, sizeof(unsigned char) * size);
  cudaMalloc((void**) &deviceRGBGrayscaleData, sizeof(unsigned char) * grayscaleSize);
  cudaMalloc((void**) &hostHistogram, sizeof(unsigned int) * HISTOGRAM_LENGTH);
  cudaMalloc((void**) &hostCdf, sizeof(float) * HISTOGRAM_LENGTH);
  deviceHistogram = (unsigned int *) malloc(sizeof(unsigned int) * HISTOGRAM_LENGTH);
  deviceCdf = (float *) malloc(sizeof(float) * HISTOGRAM_LENGTH);


  cudaMemcpy(deviceInputImageData, hostInputImageData, sizeof(float) * size, cudaMemcpyHostToDevice);

  dim3 dimBlock(HISTOGRAM_LENGTH, 1, 1);
  dim3 dimGrid((dimBlockSize), 1, 1);

  // COnvert Img to grayscale then unschar->float first

  convertFloatChar<<<dimGrid, dimBlock>>>(deviceInputImageData, deviceUnsignedImageData, size);
  RGBToGrayScale<<<dimGrid, dimBlock>>>(deviceUnsignedImageData, deviceRGBGrayscaleData, grayscaleSize);
  computeHistogram<<<dimGrid, dimBlock>>>(deviceRGBGrayscaleData, hostHistogram, grayscaleSize);
  // Check if cpy right 
  cudaMemcpy(deviceHistogram, hostHistogram, sizeof(unsigned int) * HISTOGRAM_LENGTH, cudaMemcpyDeviceToHost);

  //Include cpu code
  deviceCdf[0] = deviceHistogram[0] / (1.0 * grayscaleSize);
  for(int i = 0; i < 256; i++)
  {
    deviceCdf[i] = deviceCdf[i - 1] + deviceHistogram[i] / (1.0 * grayscaleSize);
  }
  // compute histo then back to usnigned to restore value
  cudaMemcpy(hostCdf, deviceCdf, sizeof(float) * HISTOGRAM_LENGTH, cudaMemcpyHostToDevice);
  histoEqualization<<<dimGrid, dimBlock>>>(hostCdf, deviceUnsignedImageData, size);
  // printf(dimGrid)
  convertCharFloat<<<dimGrid, dimBlock>>>(deviceUnsignedImageData, deviceOutputImageData, size);

  hostOutputImageData = outputImage->data;
  cudaMemcpy(hostOutputImageData, deviceOutputImageData, sizeof(float) * size, cudaMemcpyDeviceToHost);

  wbSolution(args, outputImage);

  //@@ insert code here


// Free Host 
  cudaFree(deviceInputImageData);
  cudaFree(deviceOutputImageData);
  cudaFree(deviceUnsignedImageData);
  cudaFree(deviceRGBGrayscaleData);
  cudaFree(hostHistogram);
  cudaFree(hostCdf);

//Free Malloc 
  free(deviceHistogram);
  free(deviceCdf);

  return 0;
}
