# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/plugins

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ImplicitMotility/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/CurvatureCalculator/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/OrientedGrowth/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ContactOrientation/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/BoundaryMonitor/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/CellTypeMonitor/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Polarization23/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ClusterSurface/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ClusterSurfaceTracker/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/CellType/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/VolumeTracker/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Volume/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Contact/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Surface/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/SurfaceTracker/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/AdhesionFlex/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Mitosis/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Chemotaxis/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ChemotaxisSimple/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/CenterOfMass/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/MomentOfInertia/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ConvergentExtension/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/NeighborTracker/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/PDESolverCaller/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ContactLocalFlex/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ContactLocalProduct/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ContactMultiCad/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/FocalPointPlasticity/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Curvature/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ChemotaxisDicty/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ExternalPotential/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Compartment/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ContactInternal/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Connectivity/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ConnectivityLocalFlex/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ConnectivityGlobal/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/LengthConstraint/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/CellOrientation/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ElasticityTracker/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/PlasticityTracker/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Plasticity/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/OrientedContact/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/PolarizationVector/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/PixelTracker/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/BoundaryPixelTracker/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/GlobalBoundaryPixelTracker/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Viscosity/cmake_install.cmake")
  include("/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Secretion/cmake_install.cmake")

endif()

