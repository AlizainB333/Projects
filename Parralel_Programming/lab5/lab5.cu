// MP5 Reduction
// Input: A num list of length n
// Output: Sum of the list = list[0] + list[1] + ... + list[n-1];

#include <wb.h>

#define BLOCK_SIZE 512 //@@ This value is not fixed and you can adjust it according to the situation

#define wbCheck(stmt)                                                     \
  do {                                                                    \
    cudaError_t err = stmt;                                               \
    if (err != cudaSuccess) {                                             \
      wbLog(ERROR, "Failed to run stmt ", #stmt);                         \
      wbLog(ERROR, "Got CUDA error ...  ", cudaGetErrorString(err));      \
      return -1;                                                          \
    }                                                                     \
  } while (0)
  
__global__ void total(float *input, float *output, int len) {


  __shared__ float partialSum[2 * BLOCK_SIZE]; 
  unsigned int t = threadIdx.x;               
  unsigned int start = 2 * blockIdx.x * blockDim.x; 

  if (start + t < len) {
    partialSum[t] = input[start + t]; // Load first half of the block
  } 
  
  else {
    partialSum[t] = 0.0f; // Handle boundary condition
  }

  if (start + blockDim.x + t < len) {
    partialSum[blockDim.x + t] = input[start + blockDim.x + t]; // Load second half
  } 
  
  else {
    partialSum[blockDim.x + t] = 0.0f; // Handle boundary condition
  }

  __syncthreads();

  for (unsigned int stride = blockDim.x; stride >= 1; stride >>= 1) {
    __syncthreads();
    if (t < stride) {
      partialSum[t] += partialSum[t + stride]; // Reduce in shared memory
    }
  }

  if (t == 0) {
    output[blockIdx.x] = partialSum[0]; // Only the first thread writes the result
  }

  //@@ Load a segment of the input vector into shared memory
  //@@ Traverse the reduction tree
  //@@ Write the computed sum of the block to the output vector at the correct index
}

int main(int argc, char **argv) {
  int ii;
  wbArg_t args;
  float *hostInput;  // The input 1D list
  float *hostOutput; // The output list
  //@@ Initialize device input and output pointers
  float *d_input, *d_output;


  int numInputElements;  // number of elements in the input list
  int numOutputElements; // number of elements in the output list

  args = wbArg_read(argc, argv);

  //Import data and create memory on host
  hostInput =
      (float *)wbImport(wbArg_getInputFile(args, 0), &numInputElements);

  numOutputElements = numInputElements / (BLOCK_SIZE << 1);
  if (numInputElements % (BLOCK_SIZE << 1)) {
    numOutputElements++;
  }
  hostOutput = (float *)malloc(numOutputElements * sizeof(float));

  // The number of input elements in the input is numInputElements
  // The number of output elements in the input is numOutputElements

  //@@ Allocate GPU memory
  cudaMalloc((void **)&d_input, numInputElements * sizeof(float));
  cudaMalloc((void **)&d_output, numOutputElements * sizeof(float));


  //@@ Copy input memory to the GPU
  cudaMemcpy(d_input,hostInput,numInputElements*sizeof(float),cudaMemcpyHostToDevice);


  //@@ Initialize the grid and block dimensions here
  dim3 blockDim(BLOCK_SIZE);
  dim3 gridDim((numInputElements + (BLOCK_SIZE) - 1) / (BLOCK_SIZE));


  //@@ Launch the GPU Kernel and perform CUDA computation
  total<<<gridDim, blockDim>>>(d_input, d_output, numInputElements);
  
  cudaDeviceSynchronize();  
  //@@ Copy the GPU output memory back to the CPU
  cudaMemcpy(hostOutput, d_output, numOutputElements * sizeof(float), cudaMemcpyDeviceToHost);

  
  /********************************************************************
   * Reduce output vector on the host
   * NOTE: One could also perform the reduction of the output vector
   * recursively and support any size input. 
   * For simplicity, we do not require that for this lab.
   ********************************************************************/
  for (ii = 1; ii < numOutputElements; ii++) {
    hostOutput[0] += hostOutput[ii];
  }

  //@@ Free the GPU memory
  cudaFree(d_input);
  cudaFree(d_output);


  wbSolution(args, hostOutput, 1);

  free(hostInput);
  free(hostOutput);

  return 0;
}

