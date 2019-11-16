#!/bin/bash

# Restart compton (needed when adding a new monitor)
pid=$(pidof "compton")

if ! [ -z $pid ]; then
    kill -s 15 $pid
fi
compton --config ~/.config/compton.conf >/dev/null 2>/dev/null &
