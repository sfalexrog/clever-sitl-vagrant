#!/bin/bash

cd /home/vagrant/clever
git pull

cd /home/vagrant/catkin_ws
. /opt/ros/kinetic/setup.bash
. /home/vagrant/catkin_ws/devel/setup.bash
catkin_make

