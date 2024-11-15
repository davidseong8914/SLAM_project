#!/bin/bash

#!/bin/bash

# Set `/use_sim_time` to true for all processes
echo "Setting /use_sim_time to true..."
rosparam set /use_sim_time true

# Start recording the /ouster/points2 topic
echo "Starting rosbag record for /ouster/points2..."
rosbag record /ouster/points2 &  # Runs in the background
RECORD_PID=$!

# Play the ROS bag with --clock at reduced speed
echo "Playing rosbag with --clock and reduced rate..."
rosbag play --clock -r 0.5 /home/david/Desktop/SLAM_project/bags/gazebo_scaife.bag &
PLAY_PID=$!

# Wait for the rosbag play to start
sleep 5  # Adjust this time if needed

# Launch the Ouster nodelet manager
echo "Launching Ouster ROS nodelet manager..."
roslaunch ouster_ros replay.launch bag_file:=/home/david/Desktop/SLAM_project/bags/gazebo_scaife.bag &
NODELET_PID=$!

# Wait for all processes to finish
echo "Processing in progress. Press Ctrl+C to stop manually if needed."

# Trap Ctrl+C to stop all processes gracefully
trap "echo 'Stopping all processes...'; kill $RECORD_PID $PLAY_PID $NODELET_PID; exit" SIGINT SIGTERM

# Keep the script running while processes are active
wait
