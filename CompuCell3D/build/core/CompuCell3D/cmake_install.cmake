# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CompuCell3D/CompuCell3D" TYPE FILE FILES
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/ClassRegistry.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/CompuCellLibDLLSpecifier.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/DerivedProperty.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/ParseData.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Parser.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/ParserStorage.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Plugin.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/PluginBase.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/PluginManager.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/PottsParseData.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Serializer.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/SimObject.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Simulator.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/SteerableObject.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Steppable.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/CC3D.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/CC3D_Main.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/CC3D_STL.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/CC3DEvents.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib" TYPE SHARED_LIBRARY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/libCC3DCompuCellLib.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DCompuCellLib.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DCompuCellLib.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Automaton"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Potts3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Boundary"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Field3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser/ExpressionEvaluator"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/XMLUtils"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/BasicUtils"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DCompuCellLib.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/homebrew/opt/llvm/bin/llvm-strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DCompuCellLib.dylib")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Field3D/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Automaton/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Boundary/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Potts3D/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/cmake_install.cmake")

endif()

