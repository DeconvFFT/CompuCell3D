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
include core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/compiler_depend.make

# Include the progress variables for this target.
include core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/progress.make

# Include the compile flags for this target's objects.
include core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/flags.make

core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.o: core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/flags.make
core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.o: ../core/CompuCell3D/steppables/UniformFieldInitializer/UniformFieldInitializer.cpp
core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.o: core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.o"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.o -MF CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.o.d -o CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.o -c /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/UniformFieldInitializer/UniformFieldInitializer.cpp

core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.i"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/UniformFieldInitializer/UniformFieldInitializer.cpp > CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.i

core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.s"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/UniformFieldInitializer/UniformFieldInitializer.cpp -o CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.s

core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.o: core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/flags.make
core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.o: ../core/CompuCell3D/steppables/UniformFieldInitializer/UniformFieldInitializerProxy.cpp
core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.o: core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.o"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.o -MF CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.o.d -o CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.o -c /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/UniformFieldInitializer/UniformFieldInitializerProxy.cpp

core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.i"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/UniformFieldInitializer/UniformFieldInitializerProxy.cpp > CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.i

core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.s"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/UniformFieldInitializer/UniformFieldInitializerProxy.cpp -o CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.s

# Object files for target UniformFieldInitializerShared
UniformFieldInitializerShared_OBJECTS = \
"CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.o" \
"CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.o"

# External object files for target UniformFieldInitializerShared
UniformFieldInitializerShared_EXTERNAL_OBJECTS =

core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializer.cpp.o
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/UniformFieldInitializerProxy.cpp.o
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/build.make
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/CompuCell3D/libCC3DCompuCellLib.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/CompuCell3D/Potts3D/libCC3DPotts3D.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/muParser/ExpressionEvaluator/libCC3DExpressionEvaluator.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/muParser/libCC3DmuParser.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/PublicUtilities/libCC3DPublicUtilities.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/CompuCell3D/Automaton/libCC3DAutomaton.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/CompuCell3D/Boundary/libCC3DBoundary.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/CompuCell3D/Field3D/libCC3DField3D.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/XMLUtils/libCC3DXMLUtils.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/BasicUtils/libCC3DBasicUtils.dylib
core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib: core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libCC3DUniformFieldInitializer.dylib"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UniformFieldInitializerShared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/build: core/CompuCell3D/steppables/UniformFieldInitializer/libCC3DUniformFieldInitializer.dylib
.PHONY : core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/build

core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/clean:
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer && $(CMAKE_COMMAND) -P CMakeFiles/UniformFieldInitializerShared.dir/cmake_clean.cmake
.PHONY : core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/clean

core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/depend:
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/saumyamehta/CompuCell3D/CompuCell3D /Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/steppables/UniformFieldInitializer /Users/saumyamehta/CompuCell3D/CompuCell3D/build /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/CompuCell3D/steppables/UniformFieldInitializer/CMakeFiles/UniformFieldInitializerShared.dir/depend

