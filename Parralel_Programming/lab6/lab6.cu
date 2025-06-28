// MP Scan
// Given a list (lst) of length n
// Output its prefix sum = {lst[0], lst[0] + lst[1], lst[0] + lst[1] + ...
// +
// lst[n-1]}

#include <wb.h>

#define BLOCK_SIZE 512 //@@ You can change this

#define wbCheck(stmt)                                                     \
  do {                                                                    \
    cudaError_t err = stmt;                                               \
    if (err != cudaSuccess) {                                             \
      wbLog(ERROR, "Failed to run stmt ", #stmt);                         \
      wbLog(ERROR, "Got CUDA error ...  ", cudaGetErrorString(err));      \
      return -1;                                                          \
    }                                                                     \
  } while (0)

__global__ void scan(float *input, float *output, int len) {
  //@@ Modify the body of this function to complete the functionality of
  //@@ the scan on the device
  //@@ You may need multiple kernel calls; write your kernels before this
  //@@ function and call them from the host

    // Memory for scan kernel 2*size
    __shared__ float scan_mem[2*BLOCK_SIZE];

    // Stride Index
    int idx = 2 * blockIdx.x * BLOCK_SIZE + threadIdx.x;
    

    // Load data into shared memory
    if (idx < len) {
      scan_mem[threadIdx.x] = input[idx];
    } else {
      scan_mem[threadIdx.x] = 0;
    }
    if (idx + BLOCK_SIZE < len) {
      scan_mem[threadIdx.x + BLOCK_SIZE] = input[idx + BLOCK_SIZE];
    } else {
      scan_mem[threadIdx.x + BLOCK_SIZE] = 0;
    }

    // Up-sweep / reduction step
    int stride = 1;
    while(stride < 2*BLOCK_SIZE) {
      __syncthreads();
      int index = (threadIdx.x + 1) * stride*2 - 1;

      if(index < 2*BLOCK_SIZE && (index-stride) >= 0) {
        scan_mem[index] += scan_mem[index-stride];
      }

      stride = stride*2;
    }

    // Post Scan Step 
    int stride_post = BLOCK_SIZE/2;
    while(stride_post > 0) {
      __syncthreads();
      int index = (threadIdx.x+1)*stride_post*2 - 1;

      if ((index+stride_post) < 2*BLOCK_SIZE) {
        scan_mem[index+stride_post] += scan_mem[index];
      }
      
      stride_post = stride_post / 2;
    }

    __syncthreads();

    if (idx < len) {
      output[idx] = scan_mem[threadIdx.x];
    }
    if (idx + blockDim.x < len) {
      output[idx + blockDim.x] = scan_mem[threadIdx.x + blockDim.x];
    } 
    
}

// Kernel 2: Store block sums into auxiliary array
__global__ void scanBlockSums(float *output, float *input, int len) {
  int scanBlockIdx = blockIdx.x;
  input[scanBlockIdx] = output[(scanBlockIdx) * blockDim.x * 2 + (blockDim.x*2 - 1)]; 
}

// Kernel 3: Add block sum to all values in the next block
__global__ void scanAddBlock(float *output, float *input, int len) {

  int idx = blockIdx.x * blockDim.x * 2 + threadIdx.x;
  if(idx < len && blockIdx.x > 0) {
    output[idx] += input[blockIdx.x-1];

    if (idx + blockDim.x < len) {
      output[idx + blockDim.x] += input[blockIdx.x-1];
    }
  }

}

int main(int argc, char **argv) {
  wbArg_t args;
  float *hostInput;  // The input 1D list
  float *hostOutput; // The output list
  float *deviceInput;
  float *deviceOutput;
  int numElements; // number of elements in the list

  float *auxBlockDevice;

  args = wbArg_read(argc, argv);

  // Import data and create memory on host
  // The number of input elements in the input is numElements
  hostInput = (float *)wbImport(wbArg_getInputFile(args, 0), &numElements);
  hostOutput = (float *)malloc(numElements * sizeof(float));

  // Allocate GPU memory.
  wbCheck(cudaMalloc((void **)&deviceInput, numElements * sizeof(float)));
  int gridSize = ceil((numElements *1.0) / (2*BLOCK_SIZE));

  wbCheck(cudaMalloc((void **)&deviceOutput, numElements * sizeof(float)));
  wbCheck(cudaMalloc((void **)&auxBlockDevice, gridSize * sizeof(float)));

  // Clear output memory.
  wbCheck(cudaMemset(deviceOutput, 0, numElements * sizeof(float)));

  // Copy input memory to the GPU.
  wbCheck(cudaMemcpy(deviceInput, hostInput, numElements * sizeof(float),
                     cudaMemcpyHostToDevice));

  //@@ Initialize the grid and block dimensions here
  // int gridSize = ceil((numElements *1.0) / (2*BLOCK_SIZE));

  dim3 dimGrid(gridSize);
  dim3 dimBlock(BLOCK_SIZE);

  //@@ Modify this to complete the functionality of the scan
  //@@ on the deivce
  scan<<<dimGrid,dimBlock>>>(deviceInput,deviceOutput,numElements);
  cudaDeviceSynchronize();

  scanBlockSums<<<dimGrid, BLOCK_SIZE>>>(deviceOutput, auxBlockDevice, numElements);
  cudaDeviceSynchronize();

  scan<<<1, gridSize>>>(auxBlockDevice, auxBlockDevice, gridSize);
  cudaDeviceSynchronize();

  scanAddBlock<<<dimGrid, dimBlock>>>(deviceOutput, auxBlockDevice, numElements);

  // Copying output memory to the CPU
  wbCheck(cudaMemcpy(hostOutput, deviceOutput, numElements * sizeof(float),
                     cudaMemcpyDeviceToHost));

  //@@  Free GPU Memory
  cudaFree(deviceInput);
  cudaFree(deviceOutput);

  wbSolution(args, hostOutput, numElements);

  free(hostInput);
  free(hostOutput);

  return 0;
}

