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
synclient TouchpadOff=1
xset mouse 3
eval "$(ssh-agent)"
xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 -F -f &
screenkey -s small --bg-color "#696969"
ssh-add
# starting window-manager
exec i3 --force-xinerama -V
