#!/bin/bash

switch=$1
if [ $switch == "+" ]; then
    xbacklight -inc 5
else
    xbacklight -dec 5
fi
