// LAB 1
#include <wb.h>

__global__ void vecAdd(float *in1, float *in2, float *out, int len) {
  //@@ Insert code to implement vector addition here
  int i = blockIdx.x * blockDim.x + threadIdx.x ;
  if(i < len) out[i] = in1[i] + in2[i];
}

int main(int argc, char **argv) {
  wbArg_t args;
  int inputLength;
  float *hostInput1;
  float *hostInput2;
  float *hostOutput;

  args = wbArg_read(argc, argv);
  //@@ Importing data and creating memory on host
  hostInput1 =
      (float *)wbImport(wbArg_getInputFile(args, 0), &inputLength);
  hostInput2 =
      (float *)wbImport(wbArg_getInputFile(args, 1), &inputLength);
  hostOutput = (float *)malloc(inputLength * sizeof(float));

  wbLog(TRACE, "The input length is ", inputLength);

  //@@ Allocate GPU memory here
  float *vec1,*vec2,*outVec;
  int size = inputLength * sizeof(float);
  cudaMalloc((void **) &vec1, size);
  cudaMemcpy(vec1, hostInput1, size, cudaMemcpyHostToDevice);
  cudaMalloc((void **) &vec2, size);
  cudaMemcpy(vec2, hostInput2, size, cudaMemcpyHostToDevice);

  //@@ Copy memory to the GPU here
  cudaMalloc((void **) &outVec, size);

  //@@ Initialize the grid and block dimensions here
  dim3 DimGrid(inputLength/256, 1, 1);
  if (0 != (inputLength % 256)) { DimGrid.x++; }
  dim3 DimBlock(256, 1, 1);
  vecAdd<<<DimGrid,DimBlock>>>(vec1, vec2, outVec, inputLength);

  //@@ Launch the GPU Kernel here to perform CUDA computation
  cudaDeviceSynchronize();

  //@@ Copy the GPU memory back to the CPU here
  cudaMemcpy(hostOutput, outVec, size, cudaMemcpyDeviceToHost);


  //@@ Free the GPU memory here
  cudaFree(vec1); cudaFree(vec2); cudaFree(outVec);

  wbSolution(args, hostOutput, inputLength);

  free(hostInput1);
  free(hostInput2);
  free(hostOutput);

  return 0;
}
