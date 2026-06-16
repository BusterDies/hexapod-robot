# RealSense D435i ROS 2 Test Result

## Status

The Intel RealSense D435i is detected over USB 3 and publishes RGB/depth streams through ROS 2 Humble.

## Confirmed Working

- D435i detected on USB 3 at 5000M.
- ROS 2 package `realsense2_camera` installed.
- RealSense node launches successfully.
- RealSense ROS version: 4.57.7.
- LibRealSense version: 2.57.7.
- Device USB type reported by RealSense node: USB 3.2.
- Color image stream publishes at about 30 Hz.
- Depth image stream publishes at about 30 Hz.

## Confirmed Topics

Observed topics included:

- `/camera/camera/aligned_depth_to_color/camera_info`
- `/camera/camera/aligned_depth_to_color/image_raw`
- `/camera/camera/color/camera_info`
- `/camera/camera/color/image_raw`
- `/camera/camera/color/metadata`
- `/camera/camera/depth/camera_info`
- `/camera/camera/depth/image_rect_raw`
- `/camera/camera/depth/metadata`
- `/camera/camera/extrinsics/depth_to_color`

## Stream Rate Checks

Color stream:

- Topic: `/camera/camera/color/image_raw`
- Rate: approximately 29.5 to 30 Hz

Depth stream:

- Topic: `/camera/camera/depth/image_rect_raw`
- Rate: approximately 30 Hz

## Issue To Resolve

The D435i IMU did not publish during the first RealSense ROS 2 test.

Observed warning/error from the launch output:

- `No HID info provided, IMU is disabled`
- `Intel RealSense D435I - HID Motion Sensor Failure`

The expected IMU topic was not available:

- `/camera/camera/imu`

## Next Steps

1. Check `/dev/hidraw*` permissions.
2. Add proper RealSense udev rules if needed.
3. Confirm gyro/accel/IMU topics publish.
4. Confirm point cloud topic publishes.
5. Move to RGB-D SLAM setup.
