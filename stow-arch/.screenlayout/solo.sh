#!/usr/bin/env bash

xrandr | grep connected | grep -v eDP-1 | awk '{print $1}' | xargs -I{} xrandr --output {} --off
xrandr --output eDP-1 --output eDP-1 --auto --output eDP-1 --dpi 160
