#!/bin/bash

# Restart compton (needed when adding a new monitor)
pid=$(pidof "compton")

if ! [ -z $pid ]; then
    kill -s 15 $pid
else
    sleep 3 # If compton isn't running, wait a few seconds to register connected monitors
fi

compton --config ~/.config/regolith/compton/config >/dev/null 2>/dev/null &
