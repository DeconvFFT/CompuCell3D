# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/CompuCell3D/CompuCell3D/Potts3D" TYPE FILE FILES
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/AcceptanceFunction.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/AttributeAdder.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/CellChangeWatcher.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/CellGChangeWatcher.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/Cell.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/CellInventory.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/CellTypeMotilityData.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/DefaultAcceptanceFunction.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/CustomAcceptanceFunction.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/EnergyFunction.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/EnergyFunctionCalculator.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/EnergyFunctionCalculatorStatistics.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/EnergyFunctionCalculatorTestDataGeneration.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/FirstOrderExpansionAcceptanceFunction.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/FixedStepper.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/Potts3D.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/PottsTestData.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/Stepper.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/TypeChangeWatcher.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/TypeTransition.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/FluctuationAmplitudeFunction.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/StandardFluctuationAmplitudeFunctions.h"
    "/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/Potts3D/CC3D_Potts3D.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib" TYPE SHARED_LIBRARY FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Potts3D/libCC3DPotts3D.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DPotts3D.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DPotts3D.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser/ExpressionEvaluator"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Boundary"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Field3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/XMLUtils"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/BasicUtils"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DPotts3D.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/homebrew/opt/llvm/bin/llvm-strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/lib/libCC3DPotts3D.dylib")
    endif()
  endif()
endif()

