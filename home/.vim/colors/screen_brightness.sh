#!/usr/bin/env bash

# The only argument expected is a + or a -
card=$(prime-select query)
change="${1}0.1"
display="eDP-1"

if [ $card = "nvidia" ]; then
    display="eDP-1-1"
fi

echo $card
# Since I had no luck with xbacklight or light, the below just manipulates the brightness using the existing value from xrandr
xrandr --output "$display" --brightness $(echo "$(xrandr --verbose | grep Brightness | grep -o '[0-9].*')$change" | bc)
