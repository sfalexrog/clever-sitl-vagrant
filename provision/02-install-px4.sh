#!/bin/bash

git clone --recursive --depth 1 -b v1.8.2 https://github.com/PX4/Firmware
cd Firmware
make posix_sitl_default
