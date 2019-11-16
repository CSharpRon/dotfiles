#!/usr/bin/env bash

# Terminate running polybars
killall -q polybar* -r

sleep 2

# Handle multiple monitors
for i in $(polybar -m | awk -F: '{print $1}')
do
    MONITOR=$i polybar --reload i3-bar &
done
