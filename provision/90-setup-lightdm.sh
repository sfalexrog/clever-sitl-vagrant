#!/bin/bash

cat <<EOF | sudo tee /etc/lightdm/lightdm.conf.d/12-autologin.conf
[SeatDefaults]
autologin-user=vagrant
EOF
