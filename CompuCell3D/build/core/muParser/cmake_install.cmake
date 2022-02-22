# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CompuCell3D/muParser" TYPE FILE FILES
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParser.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserBase.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserBytecode.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserCallback.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserDef.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserDLL.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserError.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserFixes.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserInt.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserStack.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserTest.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserTemplateMagic.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserToken.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/muParserTokenReader.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/muParser/CC3D_muParser.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib" TYPE SHARED_LIBRARY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser/libCC3DmuParser.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DmuParser.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DmuParser.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/homebrew/opt/llvm/bin/llvm-strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DmuParser.dylib")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser/ExpressionEvaluator/cmake_install.cmake")

endif()

