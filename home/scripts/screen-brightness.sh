#!/bin/bash

switch=$1
if [ $switch == "+" ]; then
    xbacklight -inc 5
    if [ $(xbacklight) = 100.000000 ]; then
        notify-send --icon=gtk-info "Maximum screen brightness reached"
    fi
else
    xbacklight -dec 5
fi
