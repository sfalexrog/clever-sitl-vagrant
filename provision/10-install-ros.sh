#!/bin/bash

ROS_DISTRO="kinetic"

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116
echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" | sudo tee /etc/apt/sources.list.d/ros-latest.list
sudo apt-get update
sudo apt-get -y --quiet --no-install-recommends install \
    geographiclib-tools \
    libeigen3-dev \
    libgeographic-dev \
    libopencv-dev \
    protobuf-compiler \
    python-catkin-tools \
    python3-tk \
    python3-dev \
    python3-pip \
    python3-setuptools \
    ros-$ROS_DISTRO-gazebo-ros-pkgs \
    ros-$ROS_DISTRO-mavlink \
    ros-$ROS_DISTRO-mavros \
    ros-$ROS_DISTRO-mavros-extras \
    ros-$ROS_DISTRO-pcl-conversions \
    ros-$ROS_DISTRO-pcl-msgs \
    ros-$ROS_DISTRO-pcl-ros \
    ros-$ROS_DISTRO-ros-base \
    ros-$ROS_DISTRO-rostest \
    ros-$ROS_DISTRO-rosunit

sudo geographiclib-get-geoids egm96-5
pip3 install --user matplotlib numpy px4tools pymavlink
sudo rosdep init
rosdep update
