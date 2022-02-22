# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CompuCell3D/CompuCell3D/Boundary" TYPE FILE FILES
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/AlgorithmFactory.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/Algorithm.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/BoundaryFactory.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/Boundary.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/BoundaryTypeDefinitions.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/BoundaryStrategy.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/BoundaryDLLSpecifier.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/ChengbangAlgorithm.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/DefaultAlgorithm.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/NoFluxBoundary.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/PeriodicBoundary.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Boundary/CC3D_Boundary.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib" TYPE SHARED_LIBRARY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Boundary/libCC3DBoundary.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DBoundary.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DBoundary.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Field3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/BasicUtils"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DBoundary.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/homebrew/opt/llvm/bin/llvm-strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DBoundary.dylib")
    endif()
  endif()
endif()

