# CMake generated Testfile for 
# Source directory: /home/david/Desktop/SLAM_project/src/ouster-ros
# Build directory: /home/david/Desktop/SLAM_project/build/ouster-ros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_ouster_ros_gtest_ouster_ros_test "/home/david/Desktop/SLAM_project/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/david/Desktop/SLAM_project/build/test_results/ouster_ros/gtest-ouster_ros_test.xml" "--return-code" "/home/david/Desktop/SLAM_project/devel/lib/ouster_ros/ouster_ros_test --gtest_output=xml:/home/david/Desktop/SLAM_project/build/test_results/ouster_ros/gtest-ouster_ros_test.xml")
set_tests_properties(_ctest_ouster_ros_gtest_ouster_ros_test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/david/Desktop/SLAM_project/src/ouster-ros/CMakeLists.txt;108;catkin_add_gtest;/home/david/Desktop/SLAM_project/src/ouster-ros/CMakeLists.txt;0;")
subdirs("ouster_example")
