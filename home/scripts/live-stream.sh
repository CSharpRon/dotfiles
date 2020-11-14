#!/usr/bin/env sh

#space_travel='https://www.youtube.com/watch?v=XBPjVzSoepo'
space_travel='https://www.youtube.com/watch?v=tNkZsRW7h2c'
#space_travel='https://www.youtube.com/watch?v=VJ3u6zBcVSA'
streamlink -p "mpv --no-audio --wid=$1" $space_travel  best
