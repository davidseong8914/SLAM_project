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

# Utility rule file for run_tests_ouster_ros_gtest_ouster_ros_test.

# Include the progress variables for this target.
include ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/progress.make

ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test:
	cd /home/david/Desktop/SLAM_project/build/ouster-ros && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/run_tests.py /home/david/Desktop/SLAM_project/build/test_results/ouster_ros/gtest-ouster_ros_test.xml "/home/david/Desktop/SLAM_project/devel/lib/ouster_ros/ouster_ros_test --gtest_output=xml:/home/david/Desktop/SLAM_project/build/test_results/ouster_ros/gtest-ouster_ros_test.xml"

run_tests_ouster_ros_gtest_ouster_ros_test: ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test
run_tests_ouster_ros_gtest_ouster_ros_test: ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/build.make

.PHONY : run_tests_ouster_ros_gtest_ouster_ros_test

# Rule to build all files generated by this target.
ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/build: run_tests_ouster_ros_gtest_ouster_ros_test

.PHONY : ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/build

ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/clean:
	cd /home/david/Desktop/SLAM_project/build/ouster-ros && $(CMAKE_COMMAND) -P CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/cmake_clean.cmake
.PHONY : ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/clean

ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/depend:
	cd /home/david/Desktop/SLAM_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/Desktop/SLAM_project/src /home/david/Desktop/SLAM_project/src/ouster-ros /home/david/Desktop/SLAM_project/build /home/david/Desktop/SLAM_project/build/ouster-ros /home/david/Desktop/SLAM_project/build/ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ouster-ros/CMakeFiles/run_tests_ouster_ros_gtest_ouster_ros_test.dir/depend
