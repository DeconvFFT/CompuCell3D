#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include<cuda_runtime.h>
#include<finite_difference.h>
#include<vector>

using namespace std;
// stencil coefficients
__constant__ float c_ax, c_ay; // constant multiplier
dim3 grid[3][2], block[3][2]; // initialise grid and block config

// function for checking CUDA runtime API
inline
HRESULT cudaSafeCall(cudaError_t result)
{
#if defined(DEBUG) || defined(_DEBUG)
  if (result != cudaSuccess) {
    printf(E_FAIL, "CUDA Runtime Error: %s\n", cudaGetErrorString(result));
    //assert(result == cudaSuccess);
    return E_FAIL;
  }
#endif
  return S_OK;
}


// set parameter values
// returns 1 on success, 
HRESULT setDerivativeParameters(int mx, int my, int mz, int sPencils, int lPencils){

  if((mx %sPencils!=0) || (my %sPencils!=0) || (mz %sPencils!=0)){
    
    // replace with error macro
    printf("'mx', 'my', and 'mz' must be integral multiples of sPencils\n", "got error");
    return E_FAIL; 
  }

  if ((mx % lPencils != 0) || (my % lPencils != 0)) {
    printf("'mx' and 'my' must be multiples of lPencils\n", "got error");
    return E_FAIL; 
  }

  float dx = mx-1; // asigning a value for deltaX
  float k = 1.f/5.f; // assign a value to constant k
  float dt = 2; // delta t is assumed to be 2 units 
  float ax = (k * dt) / (dx * dx);

  cudaSafeCall(cudaMemcpyToSymbol(c_ax, &ax, sizeof(float), 0, cudaMemcpyHostToDevice));

  float dy = my-1; 
  float ay = (k * dt) / (dy * dy);

  cudaSafeCall(cudaMemcpyToSymbol(c_ay, &ay, sizeof(float), 0, cudaMemcpyHostToDevice));

  // grid and block execution configurations


  grid[0][0] = dim3(my/sPencils, mz, 1);

  block[0][0] = dim3(mx, sPencils, 1);

  grid[0][1] = dim3(my/lPencils, mz, 1);

  block[0][1] = dim3(mx, sPencils, 1);

  grid[1][0] = dim3(mx/sPencils, mz, 1);

  block[1][0] = dim3(sPencils, my, 1);


  grid[1][1] = dim3(mx/lPencils, mz, 1);

  block[1][1] = dim3(lPencils, my*sPencils/lPencils, 1);

  grid[2][0] = dim3(mx/sPencils, my, 1);

  block[2][0] = dim3(sPencils, mz, 1);

  grid[2][1] = dim3(mx/lPencils, my, 1);

  block[2][1] = dim3(lPencils, mz*sPencils/lPencils, 1);

return S_OK;
}

// inputs:
// pointer to float vector, pointer to derivative vector
__global__ void derivativeX(float *f, float *df, int mx, int my){
  int neighbours=2;
  //  int dim2 = (int)(sf_dim/sPencils);
  // __shared__ float s_f[sPencils][dim2]; // handles upto 2 neighbours for now
  // one dim => float ptrs to first elementg of arrays
 extern __shared__ float s_f []; // dynamic shared memory.
  //float * p1 = &s_f[0];
  int offset = (int)(neighbours/2); // offset for memory access

  // thread and block indexes
  int i = threadIdx.x;
  int j = blockIdx.x*blockDim.y +threadIdx.y;
  int si = i+offset; // local i for shared memory access + halo offset
  int k  = blockIdx.y;

  // int sj = threadIdx.y; // local j for shared memory access
  int index = si+(threadIdx.y*mx);
  int globalIdx = k*mx*my + j*mx+i;
   // s_f[sj][si] = f[globalIdx];
  s_f[index] = f[globalIdx];
  __syncthreads();


  // get derivative
 //df[globalIdx] = c_ax *(s_f[sj][si-1] - 2*s_f[sj][si] + s_f[sj][si+1]) // single dim araays here too
  df[globalIdx] = c_ax *(s_f[index-mx] - 2*s_f[index] + s_f[index+mx]); // single dim araays here too

}

// derivative y

__global__ derivativeY(float *f, float *df, int mx, int my){
   int neighbours=2;
  //  int dim2 = (int)(sf_dim/sPencils);
  // __shared__ float s_f[sPencils][dim2]; // handles upto 2 neighbours for now
  // one dim => float ptrs to first elementg of arrays
  extern __shared__ float s_f []; // dynamic shared memory.
  //float * p1 = &s_f[0];
  int offset = (int)(neighbours/2); // offset for memory access


  // thread and block indexes
  int i = blockIdx.x*blockDim.x +threadIdx.x;
  int j = threadIdx.y;
  
  int si = i+offset; // local i for shared memory access + halo offset
  int sj = threadIdx.y; // local j for shared memory access

  // int globalIdx = k*mx*my + j*mx+i;
  // int index = 
  // s_f[sj][si] = f[globalIdx];


 int index = si+(threadIdx.y*mx);
 int globalIdx = k*mx*my + j*mx+i;
 s_f[index] = f[globalIdx];
  __syncthreads();


  // get derivative
  // df[globalIdx] = c_ax *(s_f[sj][si-1] - 2*s_f[sj][si] + s_f[sj][si+1]) 
  df[globalIdx] = c_ay *(s_f[index-mx] - 2*s_f[index] + s_f[index+mx]); // single dim araays here too

}
// @param: data, takes a vector of floats as input
// can be a derivative across any dimension
// assunme 3d array structure for now
// input to the funciton: only rhew aRRAY PART (floatfieldImpl -> cc3d.cpp.compucell. field from Field3D, a 1D array)

// ** april 14, 2023 notes: **
// overload which looks for a double vector 
// divide the function into blocking and non blocking calls
 

HRESULT derivativeDevice(std::vector<float> &data){
float *f = &data[0];
float *d_f,*d_df;
const int mx=64, my=64, mz=64; // block size on one axis
float *df = new float[mx*my*mz];

// shared memory tiles will have: m* x *pencil
// spencil is used for derivate at one point in one direction
// lpencil is used for coalescing in y and z direction 
// where each thread calculkates derivate at multiple points
const int sPencils = 1; // 1 neighbour each side
const int lPencils = 32;
int sfSizeX = sPencils * (mx+2) * sizeof(float); 


int n_bytes =  sizeof(float)* mx*my*mz;

cudaSafeCall(cudaMalloc((float **)&d_f, n_bytes));

cudaSafeCall(cudaMalloc((float **)&d_df, n_bytes));


setDerivativeParameters(mx, my, mz, sPencils, lPencils); // set parameters for device

// switch case for which dimension:

// calculations for X derivative
int dimension = 0; 

// copy float to device and initialise derivative of floats

cudaSafeCall(cudaMemcpy(d_f, f, n_bytes, cudaMemcpyHostToDevice));  

cudaSafeCall(cudaMemset(d_df, 0, n_bytes));


derivativeX<<<grid[dimension][0],block[dimension][0], sfSizeX>>>(d_f, d_df, mx,my); // get x derivative

cudaSafeCall( cudaMemcpy(df, d_df, n_bytes, cudaMemcpyDeviceToHost) );

cudaSafeCall(cudaFree(d_f)); // free floats on device

cudaSafeCall(cudaFree(d_df)); // free derivatives on device

// delete [] f;

return S_OK;
}

HRESULT derivativeDevice(std::vector<double> &data){
  
    std::vector<float> temp(data.begin(), data.end());
     if (temp.size() != data.size()) {
      return E_FAIL;
     }
    return derivativeDevice(temp);
}

// kernel for SAXPY
__global__
void simpleAdd(int n, float a, float *x, float *y){
    int tId = threadIdx.x + blockDim.x * blockIdx.x;
    int stride = blockDim.x * gridDim.x;
    for(int i=tId; i<n; i+=stride){
        y[i] = a * x[i] + y[i];
    }
}


HRESULT simpleAddDevice(){
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
  cudaSafeCall(cudaMalloc((float **)&d_x, n_bytes));
  cudaSafeCall(cudaMalloc((float **)&d_y, n_bytes));
  
  // copy host data necessary to device
  cudaSafeCall(cudaMemcpy(d_x,h_x, n_bytes, cudaMemcpyHostToDevice));
  cudaSafeCall(cudaMemcpy(d_y,h_y, n_bytes, cudaMemcpyHostToDevice));
  
  // call kernbel with device side ptrs
  dim3 block(blockSize);
  dim3 grid(size/block.x);
  //<<< grid, block , amt_shared_memory,,stream(schedule calulations)>>>
  // mulkti threading like setup
  simpleAdd<<< grid, block >>>(size, a, d_x, d_y);
  cudaSafeCall(cudaDeviceSynchronize());
  
  // copy back results to host
  cudaSafeCall(cudaMemcpy(d_y, h_y, n_bytes, cudaMemcpyDeviceToHost));
  
  // freeup memory allocated
  free(h_x);
  free(h_y);
  
  cudaSafeCall(cudaFree(d_x));
  cudaSafeCall(cudaFree(d_y));
  return S_OK;
}