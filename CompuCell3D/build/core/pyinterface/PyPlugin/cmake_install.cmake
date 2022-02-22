# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pyinterface/PyPlugin" TYPE FILE FILES
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin/PyPlugin.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin/PyCompuCellObjAdapter.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin/EnergyFunctionPyWrapper.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin/ChangeWatcherPyWrapper.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin/StepperPyWrapper.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin/TypeChangeWatcherPyWrapper.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin/NeighborFinderParams.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin/PyAttributeAdder.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib" TYPE SHARED_LIBRARY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/PyPlugin/libPyPlugin.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libPyPlugin.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libPyPlugin.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Automaton"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Potts3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Boundary"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Field3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser/ExpressionEvaluator"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/XMLUtils"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/BasicUtils"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libPyPlugin.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/homebrew/opt/llvm/bin/llvm-strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libPyPlugin.dylib")
    endif()
  endif()
endif()

