#!/usr/bin/env bash

# The first time polybar starts, there should be a slight delay to allow the display manager to load in any connected monitors
if ! [[ $(ps -eaf | awk '{print $8}' | grep -G ^polybar) ]]; then
    sleep 5
else
    # Terminate running polybars
    killall -q polybar* -r >/dev/null 2>&1
    sleep 2
fi

# Handle multiple monitors
for i in $(polybar -m | awk -F: '{print $1}')
do
    MONITOR=$i polybar --reload i3-bar &
done
