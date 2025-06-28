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

#define TILE_WIDTH 16

// Compute C = A * B
__global__ void matrixMultiplyShared(float *A, float *B, float *C,
                                     int numARows, int numAColumns,
                                     int numBRows, int numBColumns,
                                     int numCRows, int numCColumns) {
  //@@ Insert code to implement matrix multiplication here
  //@@ You have to use shared memory for this MP
  __shared__ float subTileA[TILE_WIDTH][TILE_WIDTH];
  __shared__ float subTileB[TILE_WIDTH][TILE_WIDTH];

  int bx = blockIdx.x; int by = blockIdx.y;
  int tx = threadIdx.x; int ty = threadIdx.y;

  int Row = by * TILE_WIDTH + ty;
  int Col = bx * TILE_WIDTH + tx;
  float Pvalue = 0;
  
  for (int i = 0; i < (ceil(1.0*numAColumns/TILE_WIDTH)); i++) {
  // Collaborative loading of M and N tiles into shared memory

    if(Row < numARows && (i*TILE_WIDTH+tx) < numAColumns) {
      subTileA[ty][tx] = A[Row*numAColumns + i*TILE_WIDTH+tx];
    } else {
      subTileA[ty][tx] = 0;
    }

    // Bound Checking
    if((i*TILE_WIDTH+ty) < numBRows && Col < numBColumns) {
      subTileB[ty][tx] = B[ (i*TILE_WIDTH+ty) * numBColumns+Col];
    } else {
      subTileB[ty][tx] = 0;
    }

    __syncthreads();

    for (int k = 0; k < TILE_WIDTH; k++) {
      Pvalue += subTileA[ty][k] * subTileB[k][tx];
    }

    __syncthreads();
  }
  // Bound Checking
  if(Row < numCRows && Col < numCColumns) {
    C[Row*numCColumns+Col] = Pvalue;
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

  //@@ Set numCRows and numCColumns
  float *deviceA; 
  float *deviceB; 
  float *deviceC;

  numCColumns = numBColumns;
  numCRows = numARows;


  //@@ Allocate the hostC matrix
  hostC = (float *)malloc(numCRows * numCColumns * sizeof(float));
  
  //@@ Allocate GPU memory here
  cudaMalloc((void **)&deviceA, numARows * numAColumns * sizeof(float));
  cudaMalloc((void **)&deviceB, numBRows * numBColumns * sizeof(float));
  cudaMalloc((void **)&deviceC, numCRows * numCColumns * sizeof(float));

  //@@ Copy memory to the GPU here
  cudaMemcpy(deviceA, hostA, (numARows*numAColumns * sizeof(float)), cudaMemcpyHostToDevice);
  cudaMemcpy(deviceB, hostB, (numBRows*numBColumns * sizeof(float)), cudaMemcpyHostToDevice);

  //@@ Initialize the grid and block dimensions here
  dim3 dimBlock(16, 16, 1); // Thread Block Size
  // Set Grid Dim from formula lecture
  // dim3 dimGrid(ceil(1.0 * numCColumns + dimBlock.x - 1) / dimBlock.x, (numCRows + dimBlock.y - 1) / dimBlock.y, 1);
  dim3 dimGrid(ceil((1.0 * numCColumns) / 16), ceil((1.0 * numCRows) / 16), 1);
  matrixMultiplyShared<<<dimGrid, dimBlock>>>(deviceA, deviceB, deviceC, numARows, numAColumns, numBRows, numBColumns, numCRows, numCColumns);


  //@@ Launch the GPU Kernel here
  cudaDeviceSynchronize();

  //@@ Copy the GPU memory back to the CPU here
  cudaMemcpy(hostC, deviceC, (numCRows*numCColumns*sizeof(float)), cudaMemcpyDeviceToHost);

  //@@ Free the GPU memory here
  cudaFree(deviceA);
  cudaFree(deviceB);
  cudaFree(deviceC);

  wbSolution(args, hostC, numCRows, numCColumns);

  free(hostA);
  free(hostB);

  //@@ Free the hostC matrix
  free(hostC);

  return 0;
}
