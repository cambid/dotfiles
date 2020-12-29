#!/bin/bash
xrandr --dpi 220
# personal colors and fonts
[[ -f ~/.Xresources ]] && xrdb -merge -I"$HOME" ~/.Xresources
# personal keymap
[[ -f ~/.xmodmaprc ]] && xmodmap ~/.xmodmaprc
setxkbmap -option shift:both_capslock
setxkbmap -option caps:escape
# no energy-star
xset -dpms
# no bell
xset b off
# no screensaver
xset s off
# setting background
feh --bg-scale ~/.backgrounds/active
# starting helper programs
CM_SYNC_PRIMARY_TO_CLIPBOARD=1 clipmenud &
solaar --tray &
redshift &
unclutter --timeout 3 &
dbus-launch &
pulseaudio --start
mpd
dunst &
xinput set-prop --type=float "ALP0011:00 044E:120C" "libinput Accel Speed" 1.0
xinput --set-prop "pointer:Logitech MX Ergo" "libinput Accel Speed" 1.0
eval "$(ssh-agent)"
flameshot &
ssh-add
# starting window manager
exec i3
