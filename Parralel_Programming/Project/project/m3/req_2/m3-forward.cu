#include <cmath>
#include <iostream>
#include "gpu-new-forward.h"

#define TILE_WIDTH 16
#define BLOCK_SIZE 256



 __global__ void KenelFusedConvulution(const int Channel, const int K, const int Height, const int Width, const int Width_out, const int Height_out, const int Map_out,
                                       const float* inputTile, const float* tileMask, float* outputTile) {
                                            
    __shared__ float tileMatA[TILE_WIDTH][TILE_WIDTH];
    __shared__ float tileMatB[TILE_WIDTH][TILE_WIDTH];

    #define in_4d(i3, i2, i1, i0)   inputTile[(i3) * (Channel * Height * Width) + (i2) * (Height * Width) + (i1) * (Width) + i0]
    #define mask_4d(i3, i2, i1, i0) tileMask[(i3) * (Channel * K * K) + (i2) * (K * K) + (i1) * (K) + i0]
    #define out_4d(i3, i2, i1, i0)  outputTile[(i3) * (Map_out * Height_out * Width_out) + (i2) * (Height_out * Width_out) + (i1) * (Width_out) + i0]

    int batch_size = blockIdx.z;

    int tx = threadIdx.x, ty = threadIdx.y;
    int row = blockIdx.y * TILE_WIDTH + ty;
    int column = blockIdx.x * TILE_WIDTH + tx;
    int numMatAColumns = Channel*K*K; 

    float acc = 0.0;

    int num_iterations = ceil(numMatAColumns/(1.0*TILE_WIDTH));

    for (int i = 0; i < num_iterations; i++) {
        int temp_col = i*TILE_WIDTH + tx, temp_row = i*TILE_WIDTH + ty;
        tileMatA[ty][tx] = 0;
        tileMatB[ty][tx] = 0;

        int W_c = temp_col/(K*K);
        int W_h = (temp_col%(K*K))/K, W_w = (temp_col%(K*K))%K;

        if (temp_col < numMatAColumns && row < Map_out) {
            tileMatA[ty][tx] = mask_4d(row, W_c, W_h, W_w);
        }
        else {
            tileMatA[ty][tx] = 0;
        }

        int X_c = temp_row/(K*K);
        int X_p = temp_row%(K*K)/K , X_q = (temp_row%(K*K))%K;
        int X_h = column/Width_out, X_w = column%Width_out;

        if (temp_row < numMatAColumns && column < Height_out*Width_out) {
            tileMatB[ty][tx] = in_4d(batch_size, X_c, X_h + X_p, X_w + X_q);
        }
        else {
            tileMatB[ty][tx] = 0; 
        }

        __syncthreads();

        for (int q = 0; q < TILE_WIDTH; q++) {
            acc += tileMatA[ty][q] * tileMatB[q][tx];
            __syncthreads();
        }
    }

    int Y_h = column / Width_out, Y_w = column % Width_out;

    if (row < Map_out && column < Width_out*Height_out) {
        out_4d(batch_size, row, Y_h, Y_w) = acc;
    }

    #undef in_4d
    #undef mask_4d
    #undef out_4d
 }

__host__ void GPUInterface::conv_forward_gpu_prolog(const float *host_output, const float *host_input, const float *host_mask, float **device_output_ptr, float **device_input_ptr, float **device_mask_ptr, const int Batch, const int Map_out, const int Channel, const int Height, const int Width, const int K)
{
    // TODO: Allocate memory and copy over the relevant data structures to the GPU

    // We pass double pointers for you to initialize the relevant device pointers,
    //  which are passed to the other two functions.

    // Useful snippet for error checking
    // cudaError_t error = cudaGetLastError();
    // if(error != cudaSuccess)
    // {
    //     std::cout<<"CUDA error: "<<cudaGetErrorString(error)<<std::endl;
    //     exit(-1);
    // }

    // Assigning to global variable access in different streams


    const int Height_out = Height - K + 1;
    const int Width_out = Width - K + 1;

    cudaMalloc((void**) device_input_ptr, Batch * Channel * Height * Width * sizeof(float));
    cudaMalloc((void**) device_output_ptr, Batch * Map_out * Height_out * Width_out * sizeof(float));
    cudaMalloc((void**) device_mask_ptr, Map_out * Channel * K * K * sizeof(float));

    cudaMemcpy(*device_input_ptr, host_input, Batch * Channel * Height * Width * sizeof(float), cudaMemcpyHostToDevice);
    cudaMemcpy(*device_mask_ptr, host_mask, Map_out * Channel * K * K * sizeof(float), cudaMemcpyHostToDevice);

}


__host__ void GPUInterface::conv_forward_gpu(float *device_output, const float *device_input, const float *device_mask, const int Batch, const int Map_out, const int Channel, const int Height, const int Width, const int K)
{
    const int Height_out = Height - K + 1;
    const int Width_out = Width - K + 1;

    // TODO: Set the kernel dimensions and call the fused kernel
    dim3 DimBlock(TILE_WIDTH, TILE_WIDTH, 1);
    dim3 DimGrid(ceil(Width_out*Height_out / float(TILE_WIDTH)), ceil(Map_out / float(TILE_WIDTH)), Batch);

    KenelFusedConvulution<<<DimGrid,DimBlock>>> (Channel, K, Width, Height, Width_out, Height_out, Map_out,
                                        device_input,  device_mask, device_output);

}


__host__ void GPUInterface::conv_forward_gpu_epilog(float *host_output, float *device_output, float *device_input, float *device_mask, const int Batch, const int Map_out, const int Channel, const int Height, const int Width, const int K)
{
    // TODO: Copy the output back to host
    const int Height_out = Height - K + 1;
    const int Width_out = Width - K + 1;

    cudaMemcpy(host_output, device_output, Height_out * Width_out * Batch * Map_out * sizeof(float), cudaMemcpyDeviceToHost);

    // TODO: Free device memory
    cudaFree(device_output);
    cudaFree(device_input);
    cudaFree(device_mask);

}


__host__ void GPUInterface::get_device_properties()
{
    int deviceCount;
    cudaGetDeviceCount(&deviceCount);

    for(int dev = 0; dev < deviceCount; dev++)
    {
        cudaDeviceProp deviceProp;
        cudaGetDeviceProperties(&deviceProp, dev);

        std::cout<<"Device "<<dev<<" name: "<<deviceProp.name<<std::endl;
        std::cout<<"Computational capabilities: "<<deviceProp.major<<"."<<deviceProp.minor<<std::endl;
        std::cout<<"Max Global memory size: "<<deviceProp.totalGlobalMem<<std::endl;
        std::cout<<"Max Constant memory size: "<<deviceProp.totalConstMem<<std::endl;
        std::cout<<"Max Shared memory size per block: "<<deviceProp.sharedMemPerBlock<<std::endl;
        std::cout<<"Max threads per block: "<<deviceProp.maxThreadsPerBlock<<std::endl;
        std::cout<<"Max block dimensions: "<<deviceProp.maxThreadsDim[0]<<" x, "<<deviceProp.maxThreadsDim[1]<<" y, "<<deviceProp.maxThreadsDim[2]<<" z"<<std::endl;
        std::cout<<"Max grid dimensions: "<<deviceProp.maxGridSize[0]<<" x, "<<deviceProp.maxGridSize[1]<<" y, "<<deviceProp.maxGridSize[2]<<" z"<<std::endl;
        std::cout<<"Warp Size: "<<deviceProp.warpSize<<std::endl;
    }
}