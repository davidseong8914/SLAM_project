# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/david/Desktop/SLAM_project/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/david/Desktop/SLAM_project/build

# Utility rule file for ouster_ros_geneus.

# Include the progress variables for this target.
include ouster-ros/CMakeFiles/ouster_ros_geneus.dir/progress.make

ouster_ros_geneus: ouster-ros/CMakeFiles/ouster_ros_geneus.dir/build.make

.PHONY : ouster_ros_geneus

# Rule to build all files generated by this target.
ouster-ros/CMakeFiles/ouster_ros_geneus.dir/build: ouster_ros_geneus

.PHONY : ouster-ros/CMakeFiles/ouster_ros_geneus.dir/build

ouster-ros/CMakeFiles/ouster_ros_geneus.dir/clean:
	cd /home/david/Desktop/SLAM_project/build/ouster-ros && $(CMAKE_COMMAND) -P CMakeFiles/ouster_ros_geneus.dir/cmake_clean.cmake
.PHONY : ouster-ros/CMakeFiles/ouster_ros_geneus.dir/clean

ouster-ros/CMakeFiles/ouster_ros_geneus.dir/depend:
	cd /home/david/Desktop/SLAM_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/Desktop/SLAM_project/src /home/david/Desktop/SLAM_project/src/ouster-ros /home/david/Desktop/SLAM_project/build /home/david/Desktop/SLAM_project/build/ouster-ros /home/david/Desktop/SLAM_project/build/ouster-ros/CMakeFiles/ouster_ros_geneus.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ouster-ros/CMakeFiles/ouster_ros_geneus.dir/depend

