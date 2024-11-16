#!/bin/bash

# Set `/use_sim_time` to true for all processes
echo "Setting /use_sim_time to true..."
rosparam set /use_sim_time true

# Start the Ouster nodelet manager
echo "Launching Ouster ROS nodelet manager..."
roslaunch ouster_ros replay.launch bag_file:=/home/david/Desktop/SLAM_project/bags/gazebo_scaife.bag play_rate:=0.5 &
NODELET_PID=$!

# Wait for the nodelet manager to initialize
sleep 5  # Allow enough time for initialization

# Start playing the ROS bag with `--clock`
echo "Playing rosbag with --clock..."
rosbag play --clock -r 0.5 /home/david/Desktop/SLAM_project/bags/gazebo_scaife.bag &
PLAY_PID=$!

# Wait for the bag play to start
sleep 2

# Start recording the /ouster/points2 topic
echo "Starting rosbag record for /ouster/points2..."
rosbag record /ouster/points2 -O recorded_points2.bag &
RECORD_PID=$!

# Trap Ctrl+C to stop all processes gracefully
trap "echo 'Stopping all processes...'; kill $NODELET_PID $PLAY_PID $RECORD_PID; exit" SIGINT SIGTERM

# Wait for all processes to complete
echo "Processing in progress. Press Ctrl+C to stop manually if needed."

wait
