#!/bin/bash

colcon build \
    --merge-install \
    --symlink-install \
    --cmake-args "-DCMAKE_BUILD_TYPE=RelWithDebInfo" "-DCMAKE_EXPORT_COMPILE_COMMANDS=On"\
    -Wall -Wextra -Wpedantic

if [ "$TURTLEBOT3_MODEL" != "burger" ]; then
    export TURTLEBOT3_MODEL=burger
fi

if [ -f "/opt/ros/humble/setup.bash" ]; then
    source /opt/ros/humble/setup.bash
fi

if [ -f "install/setup.bash" ]; then
    source install/setup.bash
fi
