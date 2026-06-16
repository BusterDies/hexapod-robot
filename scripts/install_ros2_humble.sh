#!/usr/bin/env bash
set -euo pipefail

echo "[1/8] Updating apt..."
sudo apt update

echo "[2/8] Installing prerequisites..."
sudo apt install -y \
  locales \
  software-properties-common \
  curl \
  gnupg \
  lsb-release \
  ca-certificates

echo "[3/8] Setting locale..."
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

echo "[4/8] Enabling Ubuntu universe repository..."
sudo add-apt-repository universe -y

echo "[5/8] Adding ROS 2 apt repository..."
sudo mkdir -p /usr/share/keyrings

sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key \
  -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo "$UBUNTU_CODENAME") main" | \
  sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

echo "[6/8] Removing conflicting rosdep2 package if present..."
sudo apt remove -y python3-rosdep2 || true

echo "[7/8] Installing ROS 2 Humble desktop and dev tools..."
sudo apt update

sudo apt install -y \
  ros-humble-desktop \
  ros-dev-tools \
  python3-colcon-common-extensions \
  python3-rosdep

echo "[8/8] Initializing rosdep and shell environment..."
if [ ! -f /etc/ros/rosdep/sources.list.d/20-default.list ]; then
  sudo rosdep init
fi

rosdep update

if ! grep -qxF "source /opt/ros/humble/setup.bash" ~/.bashrc; then
  echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
fi

source /opt/ros/humble/setup.bash

echo
echo "ROS 2 install complete."
echo "ROS_DISTRO=$ROS_DISTRO"
ros2 --help > /dev/null
