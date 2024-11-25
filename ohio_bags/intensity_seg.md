# LiDAR Intensity Based Segmentation Efforts
# FAILED - bags from ohio are formatted differently.

## Visualize - default
    - rviz
    - rosrun tf2_ros static_transform_publisher 0 0 0 0 0 0 map os_sensor
    - roslaunch kiss_icp ohio.launch bagfile:=/home/david/Desktop/SLAM_project/ohio_bags/2022-11-11-14-40-33.bag topic:=/os_cloud_node/points
    - roslaunch kiss_icp odometry.launch bagfile:=/home/david/Desktop/SLAM_project/ohio_bags/2022-11-11-14-40-33.bag topic:=/os_cloud_node/points

    - expand tab on left to adjust visualization settings

## 1. Preprocessing Point Cloud Data
- Inspect Raw data
    - use rviz to visualize /os_cloud_node/points directly from rosbag
    - rostopic echo / rosbag info to inspect a sample of the /os_cloud_node/points
- Save map
    - rosrun pcl_ros pointcloud_to_pcd input:=/kiss/local_map _prefix:="/home/david/Desktop/SLAM_project/"
    - save point cloud as .pcd
        - rosrun pcl_ros pointcloud_to_pcd input:=/kiss/local_map _prefix:="/home/david/Desktop/SLAM_project/ohio_bags/2_pcd/"
        - roslaunch kiss_icp ohio.launch bagfile:=/home/david/Desktop/SLAM_project/ohio_bags/2022-11-11-14-40-33.bag topic:=/os_cloud_node/points
    - concatenate .pcd
        - Error
            - output.pcd not found error -> chmod +x to the ohio_bags/
            - output.pcd not found error -> df -h /home/david/Desktop/
            - Think I just didn't hae enough space


        - pcl_concatenate_points_pcd /home/david/Desktop/SLAM_project/ohio_bags/2_pcd/2_1_pcd/2_pcd*.pcd /home/david/Desktop/SLAM_project/ohio_bags/output.pcd


- Filter and Clean
    - use ROS node or PCL (Point Cloud Library) to filter noise (remove isolated points or low-density regions)
    - Downsample the point cloud if necessary using a voxel grid filter
- Separate Intensity values
    - Extract intensity values using PCL in ROS or Python


## 2. Define Intensity Segmentation
- Dynamic Thresholds
    - implement a script to visualize the intensity histogram of the point cloud
    - use numpy or ROS tools to calculate the intensity distribution
- Assign colors
    - Map intensity ranges to RGB colors

## 3. Visualize Segmented Point Cloud
- use libraries like pcl::POINTXYZI and plc:PointXYZRGB to merge intensity values with colors
- Render in RVIz
    - use RViz's PointCloud2 display to visualize the segmented map with applied colors

## 4. Save Segmented Map
- Export to ROS formats
    - .bag, .pcd, .ply

## 5. Iterate and Tune
- create an interactive script or GUI for tuning intensity thresholds and dynamically preview changes
- test segmentation in different environments to ensure robustness