#!/usr/bin/env bash

xrandr --output eDP1 --off
xrandr --output DP1-1 --left-of DP1-2

sh ~/.config/polybar/launch_polybar.sh

sleep 1;
i3 restart
