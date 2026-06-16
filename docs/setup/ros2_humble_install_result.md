# ROS 2 Humble Install Result

Date: Tue Jun 16 03:24:29 PM CDT 2026

## System

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

## ROS Environment

```text
ROS_DISTRO=humble
ROS_VERSION=2
ROS_PYTHON_VERSION=3
```

## Installed Package Checks

```text
demo_nodes_cpp
demo_nodes_cpp_native
examples_rclcpp_minimal_action_client
examples_rclcpp_minimal_action_server
examples_rclcpp_minimal_client
examples_rclcpp_minimal_composition
examples_rclcpp_minimal_publisher
examples_rclcpp_minimal_service
examples_rclcpp_minimal_subscriber
examples_rclcpp_minimal_timer
examples_rclcpp_multithreaded_executor
examples_rclpy_executors
examples_rclpy_minimal_action_client
examples_rclpy_minimal_action_server
examples_rclpy_minimal_client
examples_rclpy_minimal_publisher
examples_rclpy_minimal_service
examples_rclpy_minimal_subscriber
rclcpp
rclcpp_action
rclcpp_components
rclcpp_lifecycle
rclpy
rviz2
```

## Disk Space

```text
Filesystem      Size  Used Avail Use% Mounted on
/dev/mmcblk0p1  116G   25G   87G  23% /
```

## Notes

ROS 2 Humble is installed on the Jetson Orin Nano running Ubuntu 22.04 / JetPack 6.2.1.

The install script is stored at:

```text
scripts/install_ros2_humble.sh
```

Next planned setup steps:

1. Intel RealSense D435i detection
2. RealSense ROS 2 wrapper
3. Camera topic test
4. RViz visualization
5. SLAM setup
