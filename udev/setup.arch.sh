#!/usr/bin/env bash

if [ ! -f /etc/udev/rules.d/95-monitors.rules ]; then
    echo 'SUBSYSTEM=="drm", ACTION=="change", ENV{XAUTHORITY}="/home/hdec/.Xauthority", ENV{DISPLAY}=":0", RUN+="/home/hcuz/.screenlayout/auto.sh"' | sudo tee /etc/udev/rules.d/95-monitors.rules
    sudo udevadm control --reload-rules
fi