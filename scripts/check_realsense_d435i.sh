#!/usr/bin/env bash
set -euo pipefail

echo "=== USB devices ==="
lsusb || true

echo
echo "=== USB tree / speeds ==="
lsusb -t || true

echo
echo "=== Video devices ==="
v4l2-ctl --list-devices || true

echo
echo "=== ROS environment ==="
echo "ROS_DISTRO=${ROS_DISTRO:-not sourced}"
