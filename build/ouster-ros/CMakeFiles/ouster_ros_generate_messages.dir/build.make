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

# Utility rule file for ouster_ros_generate_messages.

# Include any custom commands dependencies for this target.
include ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/compiler_depend.make

# Include the progress variables for this target.
include ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/progress.make

ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/codegen:
.PHONY : ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/codegen

ouster_ros_generate_messages: ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/build.make
.PHONY : ouster_ros_generate_messages

# Rule to build all files generated by this target.
ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/build: ouster_ros_generate_messages
.PHONY : ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/build

ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/clean:
	cd /home/david/Desktop/SLAM_project/build/ouster-ros && $(CMAKE_COMMAND) -P CMakeFiles/ouster_ros_generate_messages.dir/cmake_clean.cmake
.PHONY : ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/clean

ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/depend:
	cd /home/david/Desktop/SLAM_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/Desktop/SLAM_project/src /home/david/Desktop/SLAM_project/src/ouster-ros /home/david/Desktop/SLAM_project/build /home/david/Desktop/SLAM_project/build/ouster-ros /home/david/Desktop/SLAM_project/build/ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : ouster-ros/CMakeFiles/ouster_ros_generate_messages.dir/depend

