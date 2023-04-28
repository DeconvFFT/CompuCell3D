set(CMAKE_INCLUDE_CURRENT_DIR ON)
project(CC3DFD LANGUAGES C CUDA)
find_package(CUDAToolkit)
if(CUDAToolkit_FOUND AND CC3D_WITHCUDA)
enable_language(CUDA)
set(CC3D_HAVECUDA ON)
  else()
  set(CC3D_HAVECUDA OFF)
endif()
SET(SRCS
finite_difference.h
finite_difference.cu
)
set(
  CUDA_INCLUDE_DIRS  
  $<BUILD_INTERFACE:${COMPUCELL3D_SOURCE_DIR}/core/cuda>
  # $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/${COMPUCELL3D_INSTALL_INCLUDE_DIR}>
  # $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/${COMPUCELL3D_INSTALL_INCLUDE_DIR}/cuda>
  # ${Python_INCLUDE_DIRS}
)
if(CC3D_HAVECUDA)
  SET(
    CC3D_LIBS  
    CUDA::cudart 
    CUDA::cuda_driver 
    CUDA::nvrtc
  )
endif()
# if(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
#   ADD_STATIC_LIBRARY(cuda ${SRCS})
# else(${CMAKE_SYSTEM_NAME} STREQUAL Windows)
#   ADD_SHARED_LIBRARY(cuda ${SRCS})
# endif(${CMAKE_SYSTEM_NAME} STREQUAL Windows)

# TARGET_INCLUDE_DIRECTORIES(${cudaLib} PUBLIC ${INCLUDE_DIRS})
# INSTALL_FILES(/${COMPUCELL3D_INSTALL_INCLUDE_DIR}/cuda .h
# finite_difference
# )
add_library(finite_difference OBJECT ${SRCS})
set_target_properties(
  finite_difference
  PROPERTIES
  CXX_VISIBILITY_PRESET hidden
  VISIBILITY_INLINES_HIDDEN 1 
  POSITION_INDEPENDENT_CODE ON 
)
if(CC3D_HAVECUDA)
  set_target_properties(
    finite_difference  
    PROPERTIES 
    CUDA_SEPARABLE_COMPILATION ON
  )
  if(CC3D_CUDA_DEBUG) 
    target_compile_options(finite_difference PRIVATE "$<$<COMPILE_LANGUAGE:CUDA>:-lineinfo>")
  endif()
endif()

target_include_directories(finite_difference PUBLIC ${CUDA_INCLUDE_DIRS} ${Python_INCLUDE_DIRS})
target_link_libraries(finite_difference PRIVATE ${CC3D_LIBS})