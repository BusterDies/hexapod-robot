# Jetson Initial State

Date: Tue Jun 16 02:56:38 PM CDT 2026

## Hardware

- NVIDIA Jetson Orin Nano 8GB Developer Kit
- Storage: 128GB microSD
- Planned camera: Intel RealSense D435i

## Current System

```text
# R36 (release), REVISION: 4.4, GCID: 41062509, BOARD: generic, EABI: aarch64, DATE: Mon Jun 16 16:07:13 UTC 2025
# KERNEL_VARIANT: oot
TARGET_USERSPACE_LIB_DIR=nvidia
TARGET_USERSPACE_LIB_DIR_PATH=usr/lib/aarch64-linux-gnu/nvidia
```

```text
Distributor ID:	Ubuntu
Description:	Ubuntu 22.04.5 LTS
Release:	22.04
Codename:	jammy
```

## Network

```text
Hostname: icore-desktop
IP addresses: 192.168.1.21 172.17.0.1 
```

## Disk

```text
Filesystem      Size  Used Avail Use% Mounted on
/dev/mmcblk0p1  116G   22G   90G  20% /
```

## Project Roadmap

1. Set up GitHub repository and documentation
2. Install ROS 2 Humble
3. Install RealSense D435i support
4. Test camera topics in ROS 2
5. Set up SLAM
6. Add teleoperation stack
7. Add Jetson-to-microcontroller bridge
8. Develop kinematics/dynamics model
9. Develop gait optimization / reinforcement learning workflow
