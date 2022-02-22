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
include core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/compiler_depend.make

# Include the progress variables for this target.
include core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/progress.make

# Include the compile flags for this target's objects.
include core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/flags.make

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.o: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/flags.make
core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.o: ../core/PublicUtilities/NumericalUtils.cpp
core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.o: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.o"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.o -MF CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.o.d -o CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.o -c /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/NumericalUtils.cpp

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.i"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/NumericalUtils.cpp > CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.i

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.s"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/NumericalUtils.cpp -o CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.s

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.o: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/flags.make
core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.o: ../core/PublicUtilities/StringUtils.cpp
core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.o: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.o"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.o -MF CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.o.d -o CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.o -c /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/StringUtils.cpp

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.i"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/StringUtils.cpp > CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.i

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.s"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/StringUtils.cpp -o CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.s

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.o: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/flags.make
core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.o: ../core/PublicUtilities/Vector3.cpp
core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.o: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.o"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.o -MF CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.o.d -o CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.o -c /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/Vector3.cpp

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.i"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/Vector3.cpp > CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.i

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.s"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/Vector3.cpp -o CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.s

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.o: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/flags.make
core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.o: ../core/PublicUtilities/ParallelUtilsOpenMP.cpp
core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.o: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.o"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.o -MF CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.o.d -o CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.o -c /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/ParallelUtilsOpenMP.cpp

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.i"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/ParallelUtilsOpenMP.cpp > CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.i

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.s"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && /Users/saumyamehta/miniforge3/envs/cc3denv/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities/ParallelUtilsOpenMP.cpp -o CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.s

# Object files for target PublicUtilitiesShared
PublicUtilitiesShared_OBJECTS = \
"CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.o" \
"CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.o" \
"CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.o" \
"CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.o"

# External object files for target PublicUtilitiesShared
PublicUtilitiesShared_EXTERNAL_OBJECTS =

core/PublicUtilities/libCC3DPublicUtilities.dylib: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/NumericalUtils.cpp.o
core/PublicUtilities/libCC3DPublicUtilities.dylib: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/StringUtils.cpp.o
core/PublicUtilities/libCC3DPublicUtilities.dylib: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/Vector3.cpp.o
core/PublicUtilities/libCC3DPublicUtilities.dylib: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/ParallelUtilsOpenMP.cpp.o
core/PublicUtilities/libCC3DPublicUtilities.dylib: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/build.make
core/PublicUtilities/libCC3DPublicUtilities.dylib: core/CompuCell3D/Boundary/libCC3DBoundary.dylib
core/PublicUtilities/libCC3DPublicUtilities.dylib: core/CompuCell3D/Field3D/libCC3DField3D.dylib
core/PublicUtilities/libCC3DPublicUtilities.dylib: core/BasicUtils/libCC3DBasicUtils.dylib
core/PublicUtilities/libCC3DPublicUtilities.dylib: core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX shared library libCC3DPublicUtilities.dylib"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PublicUtilitiesShared.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/build: core/PublicUtilities/libCC3DPublicUtilities.dylib
.PHONY : core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/build

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/clean:
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities && $(CMAKE_COMMAND) -P CMakeFiles/PublicUtilitiesShared.dir/cmake_clean.cmake
.PHONY : core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/clean

core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/depend:
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/saumyamehta/CompuCell3D/CompuCell3D /Users/saumyamehta/CompuCell3D/CompuCell3D/core/PublicUtilities /Users/saumyamehta/CompuCell3D/CompuCell3D/build /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/PublicUtilities/CMakeFiles/PublicUtilitiesShared.dir/depend

