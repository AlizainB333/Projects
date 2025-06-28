#include <wb.h>


#define wbCheck(stmt)                                                     \
  do {                                                                    \
    cudaError_t err = stmt;                                               \
    if (err != cudaSuccess) {                                             \
      wbLog(ERROR, "CUDA error: ", cudaGetErrorString(err));              \
      wbLog(ERROR, "Failed to run stmt ", #stmt);                         \
      return -1;                                                          \
    }                                                                     \
  } while (0)

//@@ Define any useful program-wide constants here
// Strategy Three
#define current_tile_arr_WIDTH_DIM 5
#define MASK_WIDTH_DIM 3
//@@ Define constant memory for device kernel here

__constant__ float M_dim_tile[MASK_WIDTH_DIM][MASK_WIDTH_DIM][MASK_WIDTH_DIM];

__global__ void conv3d(float *input, float *output, const int z_size,
                       const int y_size, const int x_size) {
  //@@ Insert kernel code here
  // Dim for shared current_tile_arr
  __shared__ float current_tile_arr[current_tile_arr_WIDTH_DIM + 2][current_tile_arr_WIDTH_DIM + 2][current_tile_arr_WIDTH_DIM + 2];

  int thread_x = threadIdx.x;
  int thread_y = threadIdx.y;
  int thread_z = threadIdx.z;

  int row_inp = blockIdx.y * current_tile_arr_WIDTH_DIM + thread_y;
  int col_inp = blockIdx.x * current_tile_arr_WIDTH_DIM + thread_x;
  int z_inp =   blockIdx.z * current_tile_arr_WIDTH_DIM + thread_z;

  int row_i = row_inp - (MASK_WIDTH_DIM - 1) / 2; 
  int col_i = col_inp - (MASK_WIDTH_DIM - 1) / 2; 
  int z_i = z_inp - (MASK_WIDTH_DIM - 1)/2;



  float Pvalue = 0.0f;
  if ((row_i >= 0) && (row_i < y_size) && (col_i >= 0) && (col_i < x_size) && (z_i >= 0) && (z_i < z_size)) {
    current_tile_arr[thread_z][thread_y][thread_x] = input[z_i * x_size * y_size + row_i * x_size + col_i];
    } 
    else{
      current_tile_arr[thread_z][thread_y][thread_x] = 0.0f;
      }
    __syncthreads (); // wait for current_tile_arr

    if ((thread_y < current_tile_arr_WIDTH_DIM) && (thread_x < current_tile_arr_WIDTH_DIM) && (thread_z < current_tile_arr_WIDTH_DIM)) {
      // Outer kernel loop for tile 0
        for(int i = 0; i < MASK_WIDTH_DIM; i++) {
          // GO through inner dimension tile width 
          for(int j = 0; j < MASK_WIDTH_DIM; j++) {
            for(int k = 0; k < MASK_WIDTH_DIM; k++){
              Pvalue += M_dim_tile[i][j][k] * current_tile_arr[i+thread_z][j+thread_y][k+thread_x];
              }
          }
        }
        if((row_inp < y_size) && (col_inp < x_size) && (z_inp < z_size)){
          output[z_inp * x_size * y_size + row_inp * x_size + col_inp] = Pvalue;
        }
    }
  }

                       

int main(int argc, char *argv[]) {
  wbArg_t args;
  int z_size;
  int y_size;
  int x_size;
  int tile_size;
  int tile_n_size;
  int tile_x_size;
  int inputLength, kernelLength;
  float *hostInput;
  float *hostKernel;
  float *hostOutput;
  //@@ Initial deviceInput and deviceOutput here.
  float *deviceInput;
  float *deviceOutput;


  args = wbArg_read(argc, argv);

  // Import data

  hostInput = (float *)wbImport(wbArg_getInputFile(args, 0), &inputLength);
  hostKernel = (float *)wbImport(wbArg_getInputFile(args, 1), &kernelLength);
  hostOutput = (float *)malloc(inputLength * sizeof(float));

  // First three elements are the input dimensions
  z_size = hostInput[0];
  y_size = hostInput[1];
  x_size = hostInput[2];
  wbLog(TRACE, "The input size is ", z_size, "x", y_size, "x", x_size);
  assert(z_size * y_size * x_size == inputLength - 3);
  assert(kernelLength == 27);


  //@@ Allocate GPU memory here
  // Recall that inputLength is 3 elements longer than the input data
  // because the first  three elements were the dimensions
  
  cudaMalloc((void **) &deviceInput, (inputLength - 3) * sizeof(float));
  cudaMalloc((void **) &deviceOutput, (inputLength - 3) * sizeof(float));
  


  //@@ Copy input and kernel to GPU here
  // Recall that the first three elements of hostInput are dimensions and
  // do
  // not need to be copied to the gpu
  cudaMemcpy(deviceInput, hostInput + 3, (inputLength - 3) * sizeof(float), cudaMemcpyHostToDevice);
  cudaMemcpyToSymbol(M_dim_tile, hostKernel, kernelLength*sizeof(float), 0, cudaMemcpyHostToDevice);

  dim3 dimGrid(ceil((1.0 * x_size)/(1.0*current_tile_arr_WIDTH_DIM)), ceil((1.0 * y_size)/(1.0*current_tile_arr_WIDTH_DIM)), ceil((1.0 * z_size)/(1.0*current_tile_arr_WIDTH_DIM)));
  dim3 dimBlock(current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1, current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1, current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1);
  // dim3 dimBlock(current_tile_arr_WIDTH_DIM + tileWIdth, current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1, current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1);

  // Dim OFF by 1 Fix
  // dim3 dimBlock(current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM, current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1, current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1);
  dim3 dimBlock(current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1, current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1, current_tile_arr_WIDTH_DIM + MASK_WIDTH_DIM - 1);

  // Grid Dim


  //@@ Launch the GPU kernel here

  conv3d<<<dimGrid, dimBlock>>>(deviceInput, deviceOutput, z_size, y_size, x_size);
  cudaDeviceSynchronize();



  //@@ Copy the device memory back to the host here
  // Recall that the first three elements of the output are the dimensions
  // and should not be set here (they are set below)


  cudaMemcpy(hostOutput + 3, deviceOutput, (inputLength - 3) * sizeof(float), cudaMemcpyDeviceToHost);
  

  // Set the output dimensions for correctness checking
  hostOutput[0] = z_size;
  hostOutput[1] = y_size;
  hostOutput[2] = x_size;
  wbSolution(args, hostOutput, inputLength);

  //@@ Free device memory

  cudaFree(deviceInput);
  cudaFree(deviceOutput);

  // Free host memory
  free(hostInput);
  free(hostOutput);
  return 0;
}