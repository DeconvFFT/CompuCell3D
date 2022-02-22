# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/PDESolvers/OpenCL

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/homebrew/cc3d_apple_silicon")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/opt/homebrew/opt/llvm/bin/llvm-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/cc3d_apple_silicon/lib/site-packages/cc3d/cpp/CompuCell3DSteppables/OpenCL/DiffusionKernel.cl;/opt/homebrew/cc3d_apple_silicon/lib/site-packages/cc3d/cpp/CompuCell3DSteppables/OpenCL/common.cl;/opt/homebrew/cc3d_apple_silicon/lib/site-packages/cc3d/cpp/CompuCell3DSteppables/OpenCL/ImplicitMatrix.cl;/opt/homebrew/cc3d_apple_silicon/lib/site-packages/cc3d/cpp/CompuCell3DSteppables/OpenCL/GPUSolverParams.h;/opt/homebrew/cc3d_apple_silicon/lib/site-packages/cc3d/cpp/CompuCell3DSteppables/OpenCL/GPUBoundaryConditions.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/cc3d_apple_silicon/lib/site-packages/cc3d/cpp/CompuCell3DSteppables/OpenCL" TYPE FILE FILES
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/PDESolvers/OpenCL/DiffusionKernel.cl"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/PDESolvers/OpenCL/common.cl"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/PDESolvers/OpenCL/ImplicitMatrix.cl"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/PDESolvers/OpenCL/../GPUSolverParams.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/PDESolvers/OpenCL/GPUBoundaryConditions.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/CompuCell3DSteppables" TYPE SHARED_LIBRARY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/PDESolvers/OpenCL/libFlexibleDiffusionSolverFE_OpenCL.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/CompuCell3DSteppables/libFlexibleDiffusionSolverFE_OpenCL.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/CompuCell3DSteppables/libFlexibleDiffusionSolverFE_OpenCL.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/homebrew/opt/llvm/bin/llvm-strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/CompuCell3DSteppables/libFlexibleDiffusionSolverFE_OpenCL.dylib")
    endif()
  endif()
endif()

