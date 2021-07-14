#!/bin/bash
# original source: https://github.com/petvas/i3lock-blur
TMPBG=/tmp/screen.png
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')

ffmpeg -f x11grab -video_size "$RES" -y -i "$DISPLAY" -filter_complex "boxblur=10:1" -vframes 1 $TMPBG -loglevel quiet

# drop all cached passwords for gpg-keys
gpg-connect-agent reloadagent /bye

# disable notifications but queue them
dunstctl set-paused true

# shutdown monitor after five seconds
xset dpms 5

i3lock -i ${TMPBG} "$@"
dunstctl set-paused false
rm ${TMPBG}
