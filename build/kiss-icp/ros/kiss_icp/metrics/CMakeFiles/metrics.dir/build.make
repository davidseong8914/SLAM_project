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

# Include any dependencies generated for this target.
include kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/depend.make

# Include the progress variables for this target.
include kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/progress.make

# Include the compile flags for this target's objects.
include kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/flags.make

kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/Metrics.cpp.o: kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/flags.make
kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/Metrics.cpp.o: /home/david/Desktop/SLAM_project/src/kiss-icp/cpp/kiss_icp/metrics/Metrics.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/david/Desktop/SLAM_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/Metrics.cpp.o"
	cd /home/david/Desktop/SLAM_project/build/kiss-icp/ros/kiss_icp/metrics && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/metrics.dir/Metrics.cpp.o -c /home/david/Desktop/SLAM_project/src/kiss-icp/cpp/kiss_icp/metrics/Metrics.cpp

kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/Metrics.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/metrics.dir/Metrics.cpp.i"
	cd /home/david/Desktop/SLAM_project/build/kiss-icp/ros/kiss_icp/metrics && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/david/Desktop/SLAM_project/src/kiss-icp/cpp/kiss_icp/metrics/Metrics.cpp > CMakeFiles/metrics.dir/Metrics.cpp.i

kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/Metrics.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/metrics.dir/Metrics.cpp.s"
	cd /home/david/Desktop/SLAM_project/build/kiss-icp/ros/kiss_icp/metrics && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/david/Desktop/SLAM_project/src/kiss-icp/cpp/kiss_icp/metrics/Metrics.cpp -o CMakeFiles/metrics.dir/Metrics.cpp.s

# Object files for target metrics
metrics_OBJECTS = \
"CMakeFiles/metrics.dir/Metrics.cpp.o"

# External object files for target metrics
metrics_EXTERNAL_OBJECTS =

/home/david/Desktop/SLAM_project/devel/lib/libmetrics.a: kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/Metrics.cpp.o
/home/david/Desktop/SLAM_project/devel/lib/libmetrics.a: kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/build.make
/home/david/Desktop/SLAM_project/devel/lib/libmetrics.a: kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/david/Desktop/SLAM_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library /home/david/Desktop/SLAM_project/devel/lib/libmetrics.a"
	cd /home/david/Desktop/SLAM_project/build/kiss-icp/ros/kiss_icp/metrics && $(CMAKE_COMMAND) -P CMakeFiles/metrics.dir/cmake_clean_target.cmake
	cd /home/david/Desktop/SLAM_project/build/kiss-icp/ros/kiss_icp/metrics && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/metrics.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/build: /home/david/Desktop/SLAM_project/devel/lib/libmetrics.a

.PHONY : kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/build

kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/clean:
	cd /home/david/Desktop/SLAM_project/build/kiss-icp/ros/kiss_icp/metrics && $(CMAKE_COMMAND) -P CMakeFiles/metrics.dir/cmake_clean.cmake
.PHONY : kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/clean

kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/depend:
	cd /home/david/Desktop/SLAM_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/david/Desktop/SLAM_project/src /home/david/Desktop/SLAM_project/src/kiss-icp/cpp/kiss_icp/metrics /home/david/Desktop/SLAM_project/build /home/david/Desktop/SLAM_project/build/kiss-icp/ros/kiss_icp/metrics /home/david/Desktop/SLAM_project/build/kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : kiss-icp/ros/kiss_icp/metrics/CMakeFiles/metrics.dir/depend

