# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/CC3DXML

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp" TYPE MODULE FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CC3DXML/_CC3DXML.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/_CC3DXML.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/_CC3DXML.so")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/XMLUtils"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/BasicUtils"
      -add_rpath "@loader_path/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/_CC3DXML.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/homebrew/opt/llvm/bin/llvm-strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/_CC3DXML.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp" TYPE FILE FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CC3DXML/CC3DXML.py")
endif()

