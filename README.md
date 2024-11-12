# SLAM_project
Adaptive Speed Optimization for SLAM Using KISS-ICP on a Rover Robot.

## Operating Ouster LiDAR (OS0 - 64) on Ubuntu 20.04.12
### 1. Downloading necessary packages
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
1. Ethernet Connection (1Gb) <br>
*** On Windows - Network Settings > Automatic (DHCP)<br>
*** On Ubuntu - Network Settings > eth0: Link-Local 
2. Power LiDAR <br>
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
ouster-cli source <LiDAR IP> viz
```

### 5. Using the ouster-ros driver

#### 5.1 Setup
Clone SLAM_project repository
```
git clone https://github.com/davidseong8914/SLAM_project.git
```
<br>
Follow instructions at: https://github.com/ouster-lidar/ouster-ros 
<br><br>
or
<br>
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

Think I took care of this but if ouster-ros is not in the src/ folder
```
mkdir -p catkin_ws/src && cd catkin_ws/src
git clone --recurse-submodules https://github.com/ouster-lidar/ouster-ros.git
```

Final touches
```
echo $ROS_DISTRO #check your ros distro
source /opt/ros/<ros-distro>/setup.bash # replace ros-distro with 'melodic' or 'noetic'

catkin_make --cmake-args -DCMAKE_BUILD_TYPE=Release
```

#### 5.2 Usage
ouster-ros has 3 modes
- live sensor
- replay recorded ros bag
- record a new bag using the corresponding launch files

<b>1. Sensor Mode <b>
- sensor.launch
    - node 1: connect to sensor and publish raw packets
    - node 2 & 3: converts raw packets to IMU image and PointCloud2 messages
- driver.launch
    - node 1: handles all of the tasks 

*** driver.launch offers better performance

Following code should visualize live LiDAR through rviz
```
roslaunch ouster_ros driver.launch      \
    sensor_hostname:=<sensor host name or ip> 
```

<b>2. Recording Mode<b>
```
roslaunch ouster_ros record.launch      \
    sensor_hostname:=<sensor host name> \
    bag_file:=<optional bag file name>  \

# example command # should save data to 'test.bag' in SLAM_project workspace

roslaunch ouster_ros record.launch sensor_hostname:=<sensor ip> bag_file:=test.bag
```

<b>3. Replay Mode <b>
```
roslaunch ouster_ros replay.launch      \
    bag_file:=<path to rosbag file>     \

# ex

roslaunch ouster_ros replay.launch bag_file:=/home/david/Desktop/SLAM_project/test.bag

# play in loop for shorter videos | for situations where replay ends before rviz loads and preview can't be viewed
roslaunch ouster_ros replay.launch bag_file:=/home/david/Desktop/SLAM_project/test.bag loop:=true


```