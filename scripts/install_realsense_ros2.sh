#!/usr/bin/env bash
set -euo pipefail

echo "[1/6] Updating apt..."
sudo apt update

echo "[2/6] Installing debug tools..."
sudo apt install -y \
  usbutils \
  v4l-utils

echo "[3/6] Searching available RealSense packages..."
apt-cache search ros-humble-realsense || true
apt-cache search ros-humble-librealsense || true

echo "[4/6] Installing RealSense ROS 2 packages..."
sudo apt install -y \
  ros-humble-realsense2-camera \
  ros-humble-realsense2-description

echo "[5/6] Trying to install RealSense tools if available..."
sudo apt install -y ros-humble-librealsense2 || true
sudo apt install -y ros-humble-librealsense2-tools || true

echo "[6/6] Adding user to video and plugdev groups..."
sudo usermod -aG video,plugdev "$USER" || true

echo
echo "RealSense ROS 2 install complete."
echo "Recommended next step: sudo reboot"
