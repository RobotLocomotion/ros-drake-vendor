#!/bin/bash -e

. /opt/ros/rolling/setup.sh

mkdir src/ros-drake-vendor/build
cd src/ros-drake-vendor/build
cmake .. -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DCMAKE_PREFIX_PATH=/opt/ros/rolling -DAMENT_PREFIX_PATH=/opt/ros/rolling -DCMAKE_INSTALL_PREFIX=/opt/ros/rolling -DCMAKE_BUILD_TYPE=None
make -j1 || true
exec "$@"
