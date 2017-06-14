#!/usr/bin/env bash

connected_monitor=$(xrandr | grep '^DP-[12] connected' | awk '{print $1}')

if [ -n "$connected_monitor" ]; then
    /home/hcuz/.screenlayout/extend.sh $connected_monitor
    sleep 1
    workspaceIds=(3 4)
    for workspaceId in "${workspaceIds[@]}"; do
        i3-msg workspace $workspaceId && i3-msg move workspace to $connected_monitor
    done
    i3-msg workspace 1
else
    /home/hcuz/.screenlayout/solo.sh
fi
