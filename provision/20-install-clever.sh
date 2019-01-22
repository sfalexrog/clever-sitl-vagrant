#!/bin/bash


ROS_DISTRO="kinetic"

source /opt/ros/$ROS_DISTRO/setup.bash

git clone https://github.com/copterexpress/clever
mkdir -p catkin_ws/src

cd catkin_ws
ln -s ../../clever src/clever
rosdep install -y --from-paths src --ignore-src -r
catkin_make

(xargs -a src/clever/requirements.txt -n 1 pip install --user || true)

