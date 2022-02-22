# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.22.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.22.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/saumyamehta/CompuCell3D/CompuCell3D

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/saumyamehta/CompuCell3D/CompuCell3D/build

# Include any dependencies generated for this target.
include core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/compiler_depend.make

# Include the progress variables for this target.
include core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/progress.make

# Include the compile flags for this target's objects.
include core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/flags.make

core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.o: core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/flags.make
core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.o: ../core/CompuCell3D/plugins/Elasticity/ElasticityPlugin.cpp
core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.o: core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.o"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.o -MF CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.o.d -o CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.o -c /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/plugins/Elasticity/ElasticityPlugin.cpp

core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.i"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/plugins/Elasticity/ElasticityPlugin.cpp > CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.i

core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.s"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/plugins/Elasticity/ElasticityPlugin.cpp -o CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.s

core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.o: core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/flags.make
core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.o: ../core/CompuCell3D/plugins/Elasticity/ElasticityPluginProxy.cpp
core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.o: core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.o"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.o -MF CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.o.d -o CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.o -c /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/plugins/Elasticity/ElasticityPluginProxy.cpp

core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.i"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/plugins/Elasticity/ElasticityPluginProxy.cpp > CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.i

core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.s"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/plugins/Elasticity/ElasticityPluginProxy.cpp -o CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.s

# Object files for target ElasticityShared
ElasticityShared_OBJECTS = \
"CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.o" \
"CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.o"

# External object files for target ElasticityShared
ElasticityShared_EXTERNAL_OBJECTS =

core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPlugin.cpp.o
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/ElasticityPluginProxy.cpp.o
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/build.make
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/CompuCell3D/libCC3DCompuCellLib.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/CompuCell3D/Potts3D/libCC3DPotts3D.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/muParser/ExpressionEvaluator/libCC3DExpressionEvaluator.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/muParser/libCC3DmuParser.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/PublicUtilities/libCC3DPublicUtilities.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/CompuCell3D/Automaton/libCC3DAutomaton.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/CompuCell3D/Boundary/libCC3DBoundary.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/CompuCell3D/Field3D/libCC3DField3D.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/XMLUtils/libCC3DXMLUtils.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/BasicUtils/libCC3DBasicUtils.dylib
core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib: core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libCC3DElasticity.dylib"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ElasticityShared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/build: core/CompuCell3D/plugins/Elasticity/libCC3DElasticity.dylib
.PHONY : core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/build

core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/clean:
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity && $(CMAKE_COMMAND) -P CMakeFiles/ElasticityShared.dir/cmake_clean.cmake
.PHONY : core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/clean

core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/depend:
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/saumyamehta/CompuCell3D/CompuCell3D /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/plugins/Elasticity /Users/saumyamehta/CompuCell3D/CompuCell3D/build /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/CompuCell3D/plugins/Elasticity/CMakeFiles/ElasticityShared.dir/depend

