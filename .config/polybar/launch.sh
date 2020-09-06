#!/bin/bash

# Terminate running instances
killall -q polybar

# Wait a while
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar (config locatino = ~/.config/polybar/config)
polybar dummy &
polybar custombar &

echo "launched polybar"
