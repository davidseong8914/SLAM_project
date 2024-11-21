# SLAM_project
Adaptive Speed Optimization for SLAM Using KISS-ICP on a Rover Robot.

## Operating Ouster LiDAR (OS0 - 64) on Ubuntu 20.04.12
### 1. Basic Setup
#### 1.1 Clone SLAM_project repository
```
git clone --recurse-submodules https://github.com/davidseong8914/SLAM_project.git

or

git clone https://github.com/davidseong8914/SLAM_project.git
git submodule update --init --recursive
```
#### 1.2 Downloading necessary packages
``` linux
sudo apt update
sudo apt install python3.8-venv 
sudo apt install build-essential cmake libssl-dev python3-dev
pip install --upgrade pip setuptools wheel
pip install cmake
pip install ouster-sdk
pip list | grep ouster # to check ouster installation
```

### 2. Hardware Setup
#### 2.1 Ethernet Connection (1Gb) <br>
*** On Windows - Network Settings > Automatic (DHCP)<br>
*** On Ubuntu - Network Settings > eth0: Link-Local <br>
#### 2.2 Power LiDAR <br>
- Battery (29.6V) - Converter (24V, >1000mAh + Low Voltage Buzzer) - LiDAR

### 3. Software Setup
``` linux
# virtual environment
python3 -m venv slam_project
source slam_project/bin/activate
```
## THIS IS THE MOST IMPORTANT PART
```
# checking ethernet connection
nmcli connection show
# expected response
Wired connection 1 ethernet enp2s0 # HAS TO BE IN GREEN
```
##
```
# check LiDAR connection
ping <LiDAR IP> # this should work
# type this on the web and it should lead you to sensor information
<LiDAR IP>
# on the LiDAR information page
## Navigate to "Configurations" tab > "UDP Destination Address" > "Set Local" > "Apply Config"
```

### 4. Run LiDAR
```
# shows realtime point cloud data
ouster-cli source <LiDAR IP> viz 
```

### 5. Using the ouster-ros driver
#### 5.1 Setup
Follow instructions at: https://github.com/ouster-lidar/ouster-ros 
<br><br>
or
<br>

Install necessary ROS packages
```
sudo apt install -y                     \
    ros-$ROS_DISTRO-pcl-ros             \
    ros-$ROS_DISTRO-rviz
```

Install dependencies
```
sudo apt install -y         \
    build-essential         \
    libeigen3-dev           \
    libjsoncpp-dev          \
    libspdlog-dev           \
    libcurl4-openssl-dev    \
    cmake
```

Think I took care of this, but if ouster-ros is not in the src/ folder
```
mkdir -p catkin_ws/src && cd catkin_ws/src
git clone --recurse-submodules https://github.com/ouster-lidar/ouster-ros.git
```

Final touches
```
echo $ROS_DISTRO #check your ros distro # check ros-distro
source /opt/ros/<ros-distro>/setup.bash # replace ros-distro with 'melodic' or 'noetic'

catkin_make --cmake-args -DCMAKE_BUILD_TYPE=Release
```

#### 5.2 Usage
ouster-ros has 3 modes
- live sensor display
- replay recorded rosbag
- record a new rosbag

<b>1. Sensor Mode </b><br>
Following code should visualize live LiDAR through rviz

```linux
### first tab
roscore

### second tab
roslaunch ouster_ros driver.launch      \
    sensor_hostname:=<sensor host name or ip> 
```

<b>2. Recording Mode</b><br>
Following code should record pointcloud data and save to SLAM_project/ as "bag file name"

```
roslaunch ouster_ros record.launch      \
    sensor_hostname:=<sensor host name> \
    bag_file:=<optional bag file name>  # has to be in "name.bag" format

# example command
roslaunch ouster_ros record.launch sensor_hostname:=<sensor ip> bag_file:=test.bag
```

<b>3. Replay Mode </b>

```linux
### first tab
roscore

### second tab
roslaunch ouster_ros replay.launch      \
    bag_file:=<path to rosbag file>     \

# example command
roslaunch ouster_ros replay.launch bag_file:=/home/david/Desktop/SLAM_project/test.bag

# replay in loop | for situations where replay ends before rviz loads
roslaunch ouster_ros replay.launch bag_file:=/home/david/Desktop/SLAM_project/test.bag loop:=true
```


### 6. MISC
```
# visualize node graphs
rqt_graph 
```

### 7. Clone KISS-ICP

```
git clone --branch v0.3.0 --single-branch <LINK>
git clone --branch v0.3.0 --single-branch https://github.com/PRBonn/kiss-icp.git
pip install kiss-icp

cd ~/Desktop/SLAM_project
catkin_make
source devel/setup.bash  # or source install/setup.bash for ROS2

# code that runs kiss-icp
roslaunch kiss_icp odometry.launch bagfile:=/home/david/Desktop/SLAM_project/bags/scaife_gazebo.bag topic:=/point2
roslaunch kiss_icp odometry.launch bagfile:=/home/david/Desktop/SLAM_project/bags/scaife_gazebo.bag topic:=/point
```

### X. What's Next?
Dylan: KITTI data with KISS-ICP output, ROS1 bags to ROS2 bags -> KISS ICP <br>
Andres: Simulation <br>
David: Figure out map comparison for accuracy - origin, window method. Figure out GPS navigation for autonomous driving - Also don't think LiDAR is reaching 100m (max range) what is wrong? 

11/12
David: figure out map comparison method
Andres: Simulation
Dylan: Kiss ICP: Bag -> point 2 -> Kiss ICP
11/13
Adaptive speed based on point cloud density. then do comparison afterwards


### XX. Trying use nodelet_mgr to convert lidar_packets to ouster/points2




