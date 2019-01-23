#!/bin/bash

cat <<EOF | sudo tee /etc/lightdm/lightdm.conf
[SeatDefaults]
autologin-user=vagrant
EOF
