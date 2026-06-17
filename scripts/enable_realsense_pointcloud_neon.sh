#!/usr/bin/env bash
set -eo pipefail

set +u
source ~/projects/hexapod-robot/ros2_ws/install/setup.bash
set -u

export LD_LIBRARY_PATH=/usr/local/lib:${LD_LIBRARY_PATH:-}

echo "Waiting for /camera/camera node..."
until ros2 node list | grep -q '^/camera/camera$'; do
  sleep 1
done

echo "Enabling RealSense NEON pointcloud filter..."
ros2 param set /camera/camera pointcloud__neon_.enable true
ros2 param set /camera/camera pointcloud__neon_.stream_filter 2
ros2 param set /camera/camera pointcloud__neon_.stream_index_filter 0
ros2 param set /camera/camera pointcloud__neon_.allow_no_texture_points true
ros2 param set /camera/camera pointcloud__neon_.pointcloud_qos SENSOR_DATA

echo
echo "Current pointcloud params:"
ros2 param get /camera/camera pointcloud__neon_.enable
ros2 param get /camera/camera pointcloud__neon_.stream_filter
ros2 param get /camera/camera pointcloud__neon_.allow_no_texture_points

echo
echo "Pointcloud topics:"
ros2 topic list | grep -E "point|points" || true
