#!/usr/bin/env python

import rospy
import subprocess

def start_rosbag_recording(topics, rosbag_file_path):
    """ Start recording a rosbag """
    command = ["rosbag", "record", "-O", rosbag_file_path] + topics
    rospy.loginfo(f"Starting rosbag recording: {command}") ## what will this print
    return subprocess.Popen(command) ## what is this


def main():
    # initialize 'save_lidar' node
    rospy.init_node('save_lidar', anonymous = 'True')

    # define topics to record and rosbag file path
    topics_to_record = ["ouster_ns/lidar_packets", "ouster_ns/imu_packets"] ## how do I know these are the topics that will be provided?
    rosbag_file_path = "/home/david/Desktop/SLAM_project/lidar_data.bag"

    # start recording
    process = start_rosbag_recording(topics_to_record, bag_file_path)

    try:
        rospy.loginfo("LiDAR node and rosbag recording started.")
        rospy.spin() ## what does this do?

    except rospy.ROSInterruptException:
        rospy.loginfo("Shutting down.")
    finally:
        # stop rosbag recording when the node shuts down
        process.terminate()
        rospy.loginfo("rosbag recording stopped.")

if __name__ == '__main__':
    main()

## how will I run this code/ node?
## how will this node know to pull data from the LiDAR? don't I have to set up the connection interface between the node and the LiDAR? or will it do it automatically?
