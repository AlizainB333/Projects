// LAB 2 FA24

#include <wb.h>

#define wbCheck(stmt)                                                     \
  do {                                                                    \
    cudaError_t err = stmt;                                               \
    if (err != cudaSuccess) {                                             \
      wbLog(ERROR, "Failed to run stmt ", #stmt);                         \
      wbLog(ERROR, "Got CUDA error ...  ", cudaGetErrorString(err));      \
      return -1;                                                          \
    }                                                                     \
  } while (0)


// Compute C = A * B
__global__ void matrixMultiply(float *A, float *B, float *C, int numARows,
                               int numAColumns, int numBRows,
                               int numBColumns, int numCRows,
                               int numCColumns)
{
  //@@ Implement matrix multiplication kernel here
  // Mat formaula Index*Dim*Idx

    int matrixRowDim = blockIdx.y * blockDim.y + threadIdx.y;  // Row of matrix kernel
    int matrixColDim = blockIdx.x * blockDim.x + threadIdx.x;  // Colomns Idx of matrix
    float matrixInitialVal;

    // Check first if row dim is not exceeding num rows and
    // colomns not exceeding max col dim
    if (matrixRowDim < numCRows && matrixColDim < numCColumns) {
      // Reset Value for every calculation
      matrixInitialVal = 0.0;
      
      for (int i = 0; i < numAColumns; ++i) {
        // Formula Row*maxCol*Index + Index*col+COlDims
        matrixInitialVal += A[(matrixRowDim * numAColumns) + i] * B[(numCColumns * i) + matrixColDim];  // Cal new val
      }
      C[matrixRowDim * numCColumns + matrixColDim] = matrixInitialVal;  // Update output matrix with new calculated value
    }
}


int main(int argc, char **argv) {
  wbArg_t args;
  float *hostA; // The A matrix
  float *hostB; // The B matrix
  float *hostC; // The output C matrix
  
  int numARows;    // number of rows in the matrix A
  int numAColumns; // number of columns in the matrix A
  int numBRows;    // number of rows in the matrix B
  int numBColumns; // number of columns in the matrix B
  int numCRows;    // number of rows in the matrix C (you have to set this)
  int numCColumns; // number of columns in the matrix C (you have to set
                   // this)




  args = wbArg_read(argc, argv);

  //@@ Importing data and creating memory on host
  hostA = (float *)wbImport(wbArg_getInputFile(args, 0), &numARows,
                            &numAColumns);
  hostB = (float *)wbImport(wbArg_getInputFile(args, 1), &numBRows,
                            &numBColumns);
  wbLog(TRACE, "The dimensions of A are ", numARows, " x ", numAColumns);
  wbLog(TRACE, "The dimensions of B are ", numBRows, " x ", numBColumns);



  //@@ Set numCRows and numCColumns
  // Initlize Device Name
  float *deviceA; 
  float *deviceB; 
  float *deviceC;
  // Set from init value given
  numCColumns = numBColumns;
  numCRows = numARows;

  //@@ Allocate the hostC matrix
  hostC = (float *)malloc(numCRows * numCColumns * sizeof(float));


  //@@ Allocate GPU memory here
  // Source,Size
  cudaMalloc((void **)&deviceA, numARows * numAColumns * sizeof(float));
  cudaMalloc((void **)&deviceB, numBRows * numBColumns * sizeof(float));
  cudaMalloc((void **)&deviceC, numCRows * numCColumns * sizeof(float));

  //@@ Copy memory to the GPU here
  // Destination,Source,Size
  cudaMemcpy(deviceA, hostA, (numARows*numAColumns * sizeof(float)), cudaMemcpyHostToDevice);
  cudaMemcpy(deviceB, hostB, (numBRows*numBColumns * sizeof(float)), cudaMemcpyHostToDevice);

  //@@ Initialize the grid and block dimensions here
  dim3 dimBlock(16, 16); // Thread Block Size
  // Set Grid Dim from formula lecture
  dim3 dimGrid((numCRows + dimBlock.x - 1) / dimBlock.x, (numCColumns + dimBlock.y - 1) / dimBlock.y);

  // Entire Block Coverage // Init Grid Slide 6
  matrixMultiply<<<dimGrid, dimBlock>>>(deviceA, deviceB, deviceC, numARows, numAColumns, numBRows, numBColumns, numCColumns, numCRows);

  //@@ Launch the GPU Kernel here
  cudaDeviceSynchronize();  // From Lec 4
  
  //@@ Copy the GPU memory back to the CPU here
  // Destination, Source, Size
  cudaMemcpy(hostC, deviceC, (numCRows*numCColumns*sizeof(float)), cudaMemcpyDeviceToHost);

  //@@ Free the GPU memory here
  cudaFree(deviceA);
  cudaFree(deviceB);
  cudaFree(deviceC);

  wbSolution(args, hostC, numCRows, numCColumns);

  // Both Inout Hosts muust be freed
  free(hostA);
  free(hostB);
  free(hostC);
  //@@Free the hostC matrix

  return 0;
}

