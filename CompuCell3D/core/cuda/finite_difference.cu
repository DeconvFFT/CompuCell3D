#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include<cuda_runtime.h>
#include<finite_difference.h>
// function for checking CUDA runtime API
inline
cudaError_t checkCuda(cudaError_t result)
{
#if defined(DEBUG) || defined(_DEBUG)
  if (result != cudaSuccess) {
    fprintf(stderr, "CUDA Runtime Error: %s\n", cudaGetErrorString(result));
    assert(result == cudaSuccess);
  }
#endif
  return result;
}

__global__
void simpleAdd(int n, float a, float *x, float *y){
    int tId = threadIdx.x + blockDim.x * blockIdx.x;
    int stride = blockDim.x * gridDim.x;
    for(int i=tId; i<n; i+=stride){
        y[i] = a * x[i] + y[i];
    }
}

void simpleAddDevice(){
  // allocate data on device
  int size = 1<<20;
  int blockSize = 256;
  int n_bytes = sizeof(float) * size;
  float *h_x, *h_y;
  float a = 2.0f;

  h_x = (float *) malloc(n_bytes);
  h_y = (float *) malloc(n_bytes);
  // host memory initialisation
  for(int i=0;i<size;i++){
    h_x[i] = 10.0f;
    h_y[i] = 20.0f;
  }

  // device memory initialisation
  float *d_x, *d_y;
  cudaMalloc((float **)&d_x, n_bytes);
  cudaMalloc((float **)&d_y, n_bytes);
  
  // copy host data necessary to device
  cudaMemcpy(d_x,h_x, n_bytes, cudaMemcpyHostToDevice);
  cudaMemcpy(d_y,h_y, n_bytes, cudaMemcpyHostToDevice);
  
  // call kernbel with device side ptrs
  dim3 block(blockSize);
  dim3 grid(size/block.x);
  simpleAdd<<< grid, block >>>(size, a, d_x, d_y);
  cudaDeviceSynchronize();
  
  // copy back results to host
  cudaMemcpy(d_y, h_y, n_bytes, cudaMemcpyDeviceToHost);
  
  // freeup memory allocated
  free(h_x);
  free(h_y);
  
  cudaFree(d_x);
  cudaFree(d_y);
}