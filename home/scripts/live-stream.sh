#!/usr/bin/env sh

space_travel='https://www.youtube.com/watch?v=XBPjVzSoepo'

streamlink -p "mpv --wid=$1" $space_travel  best
