#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
MONITOR=eDP-1 TRAY_POSITION=right polybar bar &
MONITOR=HDMI-1 TRAY_POSITION= polybar bar &

echo "Bars launched..."
