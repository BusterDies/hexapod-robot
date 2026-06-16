# RealSense D435i ROS 2 Test Result

## Status

The Intel RealSense D435i is detected over USB 3 and publishes RGB/depth streams through ROS 2 Humble.

## Confirmed Working

- D435i detected on USB 3 at 5000M
- ROS 2 package `realsense2_camera` installed
- RealSense node launches successfully
- Color image stream publishes at about 30 Hz
- Depth image stream publishes at about 30 Hz

## Confirmed Topics

Observed topics included:

```text
/camera/camera/aligned_depth_to_color/camera_info
/camera/camera/aligned_depth_to_color/image_raw
/camera/camera/color/camera_info
/camera/camera/color/image_raw
/camera/camera/color/metadata
/camera/camera/depth/camera_info
/camera/camera/depth/image_rect_raw
/camera/camera/depth/metadata
/camera/camera/extrinsics/depth_to_color

