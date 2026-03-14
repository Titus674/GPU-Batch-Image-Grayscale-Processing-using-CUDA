#include <stdio.h>
#include <cuda_runtime.h>

__global__ void process_pixels(int *data)
{
    int i = threadIdx.x + blockIdx.x * blockDim.x;
    data[i] = data[i] * 2;
}

int main()
{
    int N = 1000;

    int *h_data = (int*)malloc(N*sizeof(int));
    int *d_data;

    for(int i=0;i<N;i++)
        h_data[i]=i;

    cudaMalloc(&d_data,N*sizeof(int));
    cudaMemcpy(d_data,h_data,N*sizeof(int),cudaMemcpyHostToDevice);

    process_pixels<<<10,100>>>(d_data);

    cudaMemcpy(h_data,d_data,N*sizeof(int),cudaMemcpyDeviceToHost);

    printf("GPU processing completed\n");

    cudaFree(d_data);
}