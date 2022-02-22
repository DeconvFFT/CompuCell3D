# Install script for directory: /Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/CompuCellPython

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp" TYPE MODULE FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython/_CompuCell.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/_CompuCell.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/_CompuCell.so")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/BiasVectorSteppable"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ImplicitMotility"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/PyPlugin"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Chemotaxis"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/FocalPointPlasticity"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/PlasticityTracker"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Plasticity"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/VolumeTracker"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/CenterOfMass"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Mitosis"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/Mitosis"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ClusterSurface"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ClusterSurfaceTracker"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ElasticityTracker"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ContactLocalFlex"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ContactLocalProduct"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ContactMultiCad"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/AdhesionFlex"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ConnectivityLocalFlex"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ConnectivityGlobal"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/LengthConstraint"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/BoundaryMonitor"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/MomentOfInertia"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Secretion"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/CellOrientation"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/PolarizationVector"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Polarization23"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/OrientedGrowth"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/ContactOrientation"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/CurvatureCalculator"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/PixelTracker"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/NeighborTracker"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/BoundaryPixelTracker"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Automaton"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Potts3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Boundary"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/Field3D"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser/ExpressionEvaluator"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/XMLUtils"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/BasicUtils"
      -delete_rpath "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/muParser"
      -add_rpath "@loader_path/CompuCell3DPlugins"
      -add_rpath "@loader_path/CompuCell3DSteppables"
      -add_rpath "@loader_path/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/_CompuCell.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/opt/homebrew/opt/llvm/bin/llvm-strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp/_CompuCell.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/site-packages/cc3d/cpp" TYPE FILE FILES "/Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython/CompuCell.py")
endif()

