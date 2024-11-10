#!/usr/bin/env python

import rospy
import socket
from std_msgs.msg import String

def main():
    rospy.init_node('lidar_interface', anonymous=True)

    # Define LiDAR connection settings
    lidar_ip = "<LiDAR_ip>"
    lidar_port = 7777

    # Create a socket to receive data
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((lidar_ip, lidar_port))
    rospy.loginfo(f"Listening for LiDAR data on {lidar_ip}:{lidar_port}")


    # Publisher
    pub = rospy.Publisher('/lidar_data/raw', STring, queue_size = 10)

    while not rospy.is_shutdown():
        try:
            data, addr = sock.recvfrom(65535) ## receive UDP packets
            rospy.loginfo(f"Received data from {addr}")
            pub.publish(data) # publish raw data to topic
            ## can one file only publih to one topic?
        except Exception as e:
            rospy.logerr(f"ERror receiving data: {env}")
            break
        
if __name__ = '__main__':
    try:
        main()
    except rosopy.ROSInterruptException:
        pass