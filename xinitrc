#!/bin/bash
xrandr --dpi 220
# personal colors and fonts
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
# personal keymap
xmodmap ~/.xmodmaprc
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
mpd
synclient TouchpadOff=1
xinput disable $(xinput list | grep ALP00 | grep -o "id=[0-9]*" | cut -f 2 -d "=")
xset mouse 5
eval "$(ssh-agent)"
screenkey -s small --bg-color "#696969"
ssh-add
# starting window manager
exec i3
