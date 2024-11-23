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

<!-- NOV 23 | SLAM on Ohio Bags, ouster-ros bags saved in point clouds, scans, IMU-->
### PoA 2
- A. KISS-ICP on Ohio Bags
- B. KISS-ICP on packets
    - Interface from packets - point clouds, etc

#### A. KISS-ICP Ohio (bag is in different format)
- topics: imu, points
- Original KISS ICP code
    - roslaunch kiss_icp odometry.launch bagfile:=/home/david/Desktop/SLAM_project/ohio_bags/2022-11-11-14-40-33.bag topic:=/point2

- Created ohio.launch in kiss-icp packet for launching ohio bags
    - rviz
    - rosrun tf2_ros static_transform_publisher 0 0 0 0 0 0 map os_sensor
    - roslaunch kiss_icp ohio.launch bagfile:=/home/david/Desktop/SLAM_project/ohio_bags/2022-11-11-14-40-33.bag topic:=/os_cloud_node/points
    - expand tab on left to adjust visualization settings

##### A. Results
- SLAM on Ohio bags work
- still need to use static_transform_publisher
- KISS-ICP maps are not as good as I thought they were going to be(?)

![ohio vegetation SLAM](../images/ohio_2.png)
![ohio SLAM param set](../images/ohio_param.png)

#### B. KISS-ICP on packets (ouster bags)
ouster-cli source bags/gazebo_scaife.bag slam viz -r2 --map

##### B. Results
- max range is way less than 100m

![scaife to gazebo walk](../images/scaife_gazebo_2.png)