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

# Utility rule file for CompuCell_swig_compilation.

# Include any custom commands dependencies for this target.
include core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/compiler_depend.make

# Include the progress variables for this target.
include core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/progress.make

core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation: core/pyinterface/CompuCellPython/CMakeFiles/CompuCell.dir/CompuCellPYTHON.stamp

core/pyinterface/CompuCellPython/CMakeFiles/CompuCell.dir/CompuCellPYTHON.stamp: ../core/pyinterface/CompuCellPython/CompuCell.i
core/pyinterface/CompuCellPython/CMakeFiles/CompuCell.dir/CompuCellPYTHON.stamp: ../core/pyinterface/CompuCellPython/CompuCell.i
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/saumyamehta/CompuCell3D/CompuCell3D/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Swig compile CompuCell.i for python"
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython && /opt/homebrew/Cellar/cmake/3.22.2/bin/cmake -E make_directory /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython/CMakeFiles/CompuCell.dir /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython/CMakeFiles/CompuCell.dir
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython && /opt/homebrew/Cellar/cmake/3.22.2/bin/cmake -E touch /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython/CMakeFiles/CompuCell.dir/CompuCellPYTHON.stamp
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython && /opt/homebrew/Cellar/cmake/3.22.2/bin/cmake -E env SWIG_LIB=/opt/homebrew/Cellar/swig@3/3.0.12/share/swig/3.0.12 /opt/homebrew/opt/swig@3/bin/swig -python -outdir /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython -c++ -interface _CompuCell -I/Users/saumyamehta/CompuCell3D/CompuCell3D -I/Users/saumyamehta/CompuCell3D/CompuCell3D/core -I/Users/saumyamehta/miniforge3/envs/cc3denv/include/python3.9 -I/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface -I/Users/saumyamehta/CompuCell3D/CompuCell3D/build/include -I/Users/saumyamehta/miniforge3/envs/cc3denv/lib/python3.9/site-packages/numpy/core/include -I/usr/include -I/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/CompuCellPython -I/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D -I/Users/saumyamehta/CompuCell3D/CompuCell3D/core/CompuCell3D/plugins -I/Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/PyPlugin -o /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython/CMakeFiles/CompuCell.dir/CompuCellPYTHON_wrap.cxx /Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/CompuCellPython/CompuCell.i

CompuCell_swig_compilation: core/pyinterface/CompuCellPython/CMakeFiles/CompuCell.dir/CompuCellPYTHON.stamp
CompuCell_swig_compilation: core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation
CompuCell_swig_compilation: core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/build.make
.PHONY : CompuCell_swig_compilation

# Rule to build all files generated by this target.
core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/build: CompuCell_swig_compilation
.PHONY : core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/build

core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/clean:
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython && $(CMAKE_COMMAND) -P CMakeFiles/CompuCell_swig_compilation.dir/cmake_clean.cmake
.PHONY : core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/clean

core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/depend:
	cd /Users/saumyamehta/CompuCell3D/CompuCell3D/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/saumyamehta/CompuCell3D/CompuCell3D /Users/saumyamehta/CompuCell3D/CompuCell3D/core/pyinterface/CompuCellPython /Users/saumyamehta/CompuCell3D/CompuCell3D/build /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython /Users/saumyamehta/CompuCell3D/CompuCell3D/build/core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/pyinterface/CompuCellPython/CMakeFiles/CompuCell_swig_compilation.dir/depend

