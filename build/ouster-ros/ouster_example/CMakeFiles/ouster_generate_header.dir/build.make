# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /home/david/Desktop/SLAM_project/slam_project/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/david/Desktop/SLAM_project/slam_project/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/david/Desktop/SLAM_project/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/david/Desktop/SLAM_project/build

# Utility rule file for ouster_generate_header.

# Include any custom commands dependencies for this target.
include ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/compiler_depend.make

# Include the progress variables for this target.
include ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/progress.make

ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/codegen:
.PHONY : ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/codegen

ouster_generate_header: ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/build.make
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold "Generating build info header"
	/home/david/Desktop/SLAM_project/slam_project/lib/python3.8/site-packages/cmake/data/bin/cmake -DVERSION_GEN_OUT_DIR="/home/david/Desktop/SLAM_project/build/ouster-ros/ouster_example/generated/ouster/impl" -DVERSION_GEN_SOURCE_DIR="/home/david/Desktop/SLAM_project/src/ouster-ros/ouster-sdk/cmake" -DBUILD_TYPE="Release" -DBUILD_SYSTEM="Linux" -DOusterSDK_VERSION="0.11.1" -DOusterSDK_VERSION_SUFFIX="" -P /home/david/Desktop/SLAM_project/src/ouster-ros/ouster-sdk/cmake/VersionGen.cmake
.PHONY : ouster_generate_header

# Rule to build all files generated by this target.
ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/build: ouster_generate_header
.PHONY : ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/build

ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/clean:
	cd /home/david/Desktop/SLAM_project/build/ouster-ros/ouster_example && $(CMAKE_COMMAND) -P CMakeFiles/ouster_generate_header.dir/cmake_clean.cmake
.PHONY : ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/clean

ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/depend:
	cd /home/david/Desktop/SLAM_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/Desktop/SLAM_project/src /home/david/Desktop/SLAM_project/src/ouster-ros/ouster-sdk /home/david/Desktop/SLAM_project/build /home/david/Desktop/SLAM_project/build/ouster-ros/ouster_example /home/david/Desktop/SLAM_project/build/ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : ouster-ros/ouster_example/CMakeFiles/ouster_generate_header.dir/depend

