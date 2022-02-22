# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CompuCell3D/BasicUtils" TYPE FILE FILES
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicArray.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicClassAccessorBase.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicClassAccessor.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicClassFactoryBase.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicClassFactory.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicClassGroupArray.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicClassGroupFactory.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicClassGroup.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicClassRegistry.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicCounter.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicDynamicClassFactory.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicDynamicClassNodeBase.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicDynamicClassNode.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicException.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicFileLocation.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicPluginInfo.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicPluginManager.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicPluginProxy.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicRandomNumberGenerator.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicSmartPointer.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicString.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicStringTable.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/BasicUtils.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/WindowsGlob.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/wrapdll.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/BasicUtils/Zap.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib" TYPE SHARED_LIBRARY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/BasicUtils/libCC3DBasicUtils.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DBasicUtils.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DBasicUtils.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/homebrew/opt/llvm/bin/llvm-strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DBasicUtils.dylib")
    endif()
  endif()
endif()

