#!/bin/bash

ROS_DISTRO="kinetic"
CATKIN_WS="$HOME/catkin_ws"

echo 'PATH="$HOME/.local/bin:$PATH"' >> ~/.profile
echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.profile
echo "source $CATKIN_WS/devel/setup.bash" >> ~/.profile
