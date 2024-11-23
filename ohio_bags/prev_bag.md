# These bags are from Robomechanics Lab box
## Hope these are test data from the Ohio Trip

```
rosbag info <bag name>
```

Chevron > ThinkPad Laptop Files > Home
- 2022-11-14-10-57-26.bag
    - /os_cloud_node/imu : sensor_msgs/Imu
    - /os_cloud_node/points : sensor_msgs/PointCloud2

Chevron > 2022 Trip Files
- 2022-11-11-14-40-33.bag
    - /os_cloud_node/imu : sensor_msgs/Imu
    - /os_cloud_node/points : sensor_msgs/PointCloud2
- 2022-11-10-14-19-57.bag
        - /os_cloud_node/imu : sensor_msgs/Imu
    - /os_cloud_node/points : sensor_msgs/PointCloud2

<!-- NOV 22 18:44 | Working on bag visualization-->
## bags collected using ouster
- bags/dingdong.bag
    - /ouster/imu_packets
    - /ouster/lidar_packets
    - /ouster/metadata 

### plan of attack
- (DONE) visualization old data first one by one
- figure out how to convert or pick up pointcloud2 from ouster
- how to control stuff using rviz

#### 1. ohio_bags/2022-11-10-14-19-57.bag 

```
1. roscore
2. rviz (bottom-left > add > PointCloud2 > set topic to /os_cloud_node/points)
3. rosrun tf2_ros static_transform_publisher 0 0 0 0 0 0 map os_sensor
4. rosbag play 2022-11-10-14-19-57.bag
```

2022-11-10-14-19-57.bag : is in a room
2022-11-11-14-40-33.bag : traversing vegetation
2022-11-14-10-57-26.bag : static in vegetation


