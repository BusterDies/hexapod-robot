#!/usr/bin/env bash
set -eo pipefail

set +u
source ~/projects/hexapod-robot/ros2_ws/install/setup.bash
set -u

export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH:-}

ros2 launch realsense2_camera rs_launch.py \
  enable_color:=true \
  enable_depth:=true \
  enable_gyro:=true \
  enable_accel:=true \
  unite_imu_method:=2 \
  align_depth.enable:=true \
  pointcloud.enable:=true \
  pointcloud.stream_filter:=2 \
  pointcloud.stream_index_filter:=0 \
  pointcloud.allow_no_texture_points:=true \
  depth_module.depth_profile:=640x480x30 \
  rgb_camera.color_profile:=640x480x30
