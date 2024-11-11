found out that there was a ros driver from ouster
### what is a driver?
spftware that acts as an interface between hardware (like LiDAR) and an operating system or application (like ROS). It allows your computer to communicate with the device by translating high-level commands into low-level instructions.

### we will have to clone the "outer-ros" driver into our catkin workspace as a package
#### "outer-sdk is already present in the outer-ros repository but is not populated because ouster-sdk is included as a submodule in the repository but has not been initialized or updated" - Therefore we we initialize it
1. navigate to SLAM_project/src/outer-ros
2. run the following
```
# initializing submodules
git submodule update --init --recursive

# rebuild workspace
cd ~/Desktop/SLAM_project

catkin_make

source devel/setup.bash

echo "source ~/Desktop/SLAM_project/devel/setup.bash" >> ~/.bashrc

source ~/.bashrc
```
