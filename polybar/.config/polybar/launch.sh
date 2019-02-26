#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
MONITOR=eDP1 TRAY_POSITION=right HEIGHT=40 polybar bar &
MONITOR=DP1 TRAY_POSITION= polybar bar &
MONITOR=DP2 TRAY_POSITION= polybar bar &

echo "Bars launched..."
