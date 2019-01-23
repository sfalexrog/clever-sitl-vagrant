#!/bin/bash

ROS_DISTRO="kinetic"
CATKIN_WS="$HOME/catkin_ws"

echo 'PATH="$HOME/.local/bin:$PATH"' >> ~/.profile
echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.profile
echo "source $CATKIN_WS/devel/setup.bash" >> ~/.profile

mkdir -p /home/vagrant/Desktop

cat <<EOF > /home/vagrant/Desktop/run-sitl-jmavsim.desktop
[Desktop Entry]
Version=1.0

Name=jMAVSim SITL
GenericName=jMAVSim SITL
Comment=Jot down notes for later

TryExec=/scripts/start_gui.sh
Exec=/scripts/start_gui.sh
Terminal=true
Icon=openjdk-8

StartupNotify=true
StartupWMClass=xpad

Type=Application
Categories=GTK;Utility;
X-LXQt-Need-Tray=true
EOF
