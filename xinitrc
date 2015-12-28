#!/bin/bash
# personal keymap
xmodmap ~/.xmodmaprc
# personal colors and fonts
xrdb -load ~/.Xdefaults
# no energy-star
xset -dpms
# no bell
xset b off
# no screensaver
xset s off
# setting background
feh --bg-scale ~/.backgrounds/archlinux.png
# starting helper programs
clipit -dn &
solaar &
redshift &
dbus-launch &
pulseaudio --start
eval $(ssh-agent)
ssh-add
# starting window-manager
exec i3 --force-xinerama -V
