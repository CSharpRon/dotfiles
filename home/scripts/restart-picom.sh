#!/bin/bash

# Restart picom (needed when adding a new monitor)
pid=$(pidof "picom")

if ! [ -z $pid ]; then
    kill -s 15 $pid
else
    sleep 3 # If picom isn't running, wait a few seconds to register connected monitors
fi

picom --config ~/.config/picom.conf >/dev/null 2>/dev/null &
