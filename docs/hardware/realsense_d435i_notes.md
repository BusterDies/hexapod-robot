# Intel RealSense D435i Notes

## Status

The Intel RealSense D435i is detected by the Jetson Orin Nano and is running at USB 3 speed.

## Successful USB 3 Detection

The successful detection showed the D435i on Bus 002 at 5000M.

This is the desired connection speed for reliable RGB, depth, IMU, and point cloud streaming for SLAM.

## Earlier Issue

The camera initially appeared at 480M, which means it was connected at USB 2.0 speed.

That was fixed by changing the cable or port connection so the camera enumerated on the USB 3 bus.

## Next Steps

1. Install RealSense ROS 2 packages.
2. Test RealSense package detection.
3. Launch the RealSense ROS 2 camera node.
4. Verify color, depth, IMU, and point cloud topics.
5. Move to SLAM setup.
