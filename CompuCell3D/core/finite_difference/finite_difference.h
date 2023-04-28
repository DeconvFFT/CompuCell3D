#include <stdlib.h>
#include <stdio.h>
#include<vector>
typedef int32_t HRESULT;
using namespace::std;

#define S_OK             0x00000001 // Operation successful
#define E_GENERAL        0x00000000 // Error in operation
#define E_FAIL           0x80004005 // Unspecified failure

HRESULT simpleAddDevice();
// HRESULT setParametersDevice(int dim1, int dim2, int dim3);

HRESULT derivativeDevice(std::vector<double> &data);