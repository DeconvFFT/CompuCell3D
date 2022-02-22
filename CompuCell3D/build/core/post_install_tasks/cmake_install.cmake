# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/post_install_tasks

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d" TYPE FILE FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/../cc3d/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d" TYPE FILE FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/../cc3d/run_script.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d" TYPE DIRECTORY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/../cc3d/CompuCellSetup" REGEX "/[^/]*\\.svn$" EXCLUDE REGEX "/[^/]*\\.ui$" EXCLUDE REGEX "/[^/]*\\.in$" EXCLUDE REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/[^/]*\\.bak$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE REGEX "/\\/users\\/saumyamehta\\/compucell3d\\/compucell3d\\/\\.\\.\\/cc3d\\/compucellsetup\\/[^/]*$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d" TYPE DIRECTORY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/../cc3d/core" REGEX "/[^/]*\\.svn$" EXCLUDE REGEX "/[^/]*\\.ui$" EXCLUDE REGEX "/[^/]*\\.in$" EXCLUDE REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/[^/]*\\.bak$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE REGEX "/\\/users\\/saumyamehta\\/compucell3d\\/compucell3d\\/\\.\\.\\/cc3d\\/core\\/[^/]*$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d" TYPE DIRECTORY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/../cc3d/gui_plugins" REGEX "/[^/]*\\.svn$" EXCLUDE REGEX "/[^/]*\\.ui$" EXCLUDE REGEX "/[^/]*\\.in$" EXCLUDE REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/[^/]*\\.bak$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE REGEX "/\\/users\\/saumyamehta\\/compucell3d\\/compucell3d\\/\\.\\.\\/cc3d\\/gui\\_plugins\\/[^/]*$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d" TYPE DIRECTORY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/../cc3d/player5" REGEX "/[^/]*\\.svn$" EXCLUDE REGEX "/[^/]*\\.ui$" EXCLUDE REGEX "/[^/]*\\.in$" EXCLUDE REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/[^/]*\\.bak$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE REGEX "/\\/users\\/saumyamehta\\/compucell3d\\/compucell3d\\/\\.\\.\\/cc3d\\/player5\\/[^/]*$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d" TYPE DIRECTORY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/../cc3d/twedit5" REGEX "/[^/]*\\.svn$" EXCLUDE REGEX "/[^/]*\\.ui$" EXCLUDE REGEX "/[^/]*\\.in$" EXCLUDE REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/[^/]*\\.bak$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE REGEX "/\\/users\\/saumyamehta\\/compucell3d\\/compucell3d\\/\\.\\.\\/cc3d\\/twedit5\\/[^/]*$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/cc3d_apple_silicon/compucell3d.command;/opt/homebrew/cc3d_apple_silicon/paramScan.command;/opt/homebrew/cc3d_apple_silicon/runScript.command;/opt/homebrew/cc3d_apple_silicon/twedit++.command")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/cc3d_apple_silicon" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE OWNER_EXECUTE GROUP_READ GROUP_WRITE GROUP_EXECUTE WORLD_READ WORLD_WRITE WORLD_EXECUTE FILES
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/post_install_tasks/mac/compucell3d.command"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/post_install_tasks/mac/paramScan.command"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/post_install_tasks/mac/runScript.command"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/post_install_tasks/mac/twedit++.command"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/homebrew/cc3d_apple_silicon/Demos")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/opt/homebrew/cc3d_apple_silicon" TYPE DIRECTORY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/Demos" REGEX "/[^/]*\\.svn$" EXCLUDE REGEX "/\\/users\\/saumyamehta\\/compucell3d\\/compucell3d\\/core\\/demos\\/[^/]*$")
endif()

