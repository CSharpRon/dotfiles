#!/usr/bin/env bash

# Terminate running polybars
killall -q polybar

sleep 2

# Handle multiple monitors
for i in $(polybar -m | awk -F: '{print $1}')
do 
    MONITOR=$i polybar -c ~/.config/polybar/polybar-5/config.ini top & 
    MONITOR=$i polybar -c ~/.config/polybar/polybar-5/config.ini bottom & 
done
