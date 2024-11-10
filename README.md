# SLAM_project
Adaptive Speed Optimization for SLAM Using KISS-ICP on a Rover Robot.

## Operating Ouster LiDAR (OS0 - 64) on Ubuntu 20.04.12
#### 1. Downloading necessary packages
``` linux
sudo apt update
sudo apt install python3.8-venv 
sudo apt install build-essential cmake libssl-dev python3-dev
pip install --upgrade pip setuptools wheel
pip install cmake
pip install ouster-sdk
pip list | grep ouster # to check ouster installation
```

#### 2. Hardware Setup
1. Ethernet Connection (1Gb) <br>
*** On Windows - Network Settings > Automatic (DHCP)<br>
*** On Ubuntu - Network Settings > eth0: Link-Local 
2. Power LiDAR <br>
- Battery (29.6V) - Converter (24V, >1000mAh + Low Voltage Buzzer) - LiDAR

#### 3. Software Setup
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

#### 4. Run LiDAR
```
ouster-cli source <LiDAR IP> viz
```

