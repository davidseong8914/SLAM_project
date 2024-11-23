<!-- NOV 22 18:44 | Working on bag visualization-->
## Bags collected using ouster
- bags/dingdong.bag
    - /ouster/imu_packets
    - /ouster/lidar_packets
    - /ouster/metadata 

#### A.Visualization

```
1. roscore
2. rviz (bottom-left > add > PointCloud2 > set topic to /os_cloud_node/points)
3. rosrun tf2_ros static_transform_publisher 0 0 0 0 0 0 map os_sensor
4. rosbag play 2022-11-10-14-19-57.bag
```

2022-11-10-14-19-57.bag : is in a room<br>
2022-11-11-14-40-33.bag : traversing vegetation<br>
2022-11-14-10-57-26.bag : static in vegetation

#### B. Ouster data
a. maybe instead of recording packets, record pointcloud itself
b. check what topics are being published

a.1)
rosbag play dingdong.bag 
- imu, lidar packets and metadata<br>
roslaunch ouster_ros replay.launch bag_file:=/home/david/Desktop/SLAM_project/bags/dingdong.bag loop:=true

a.2)
- created points_replay.launch
- created viz.rviz (new rviz configuration file)
- roslaunch ouster_ros points_replay.launch bag_file:=/home/david/Desktop/SLAM_project/bags/gazebo_scaife.bag # loop:=true
    - this will now visualize the point cloud
