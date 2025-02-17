#!/bin/bash
xrandr --dpi 220
# personal colors and fonts
[[ -f ~/.Xresources ]] && xrdb -merge -I"$HOME" ~/.Xresources
# personal keymap
setxkbmap eu
setxkbmap -option shift:both_capslock
setxkbmap -option caps:escape
[[ -f ~/.xmodmaprc ]] && xmodmap ~/.xmodmaprc
# no energy-star
xset -dpms
# no bell
xset b off
# no screensaver
xset s off
# setting background
feh --bg-scale --randomize ~/.backgrounds/
# starting helper programs
CM_SYNC_PRIMARY_TO_CLIPBOARD=1 clipmenud &
solaar --tray &
redshift &
unclutter --timeout 3 &
dbus-launch &
mpd
dunst --startup_notification &
xinput set-prop --type=float "TPPS/2 Elan TrackPoint" "libinput Accel Speed" 1.0
xinput set-prop --type=float "SynPS/2 Synaptics TouchPad" "libinput Accel Speed" 1.0
xinput --set-prop "pointer:Logitech MX Ergo" "libinput Accel Speed" 1.0
xinput --set-prop "pointer:Logitech USB Receiver Mouse" "libinput Accel Speed" 1.0
~/bin/xinput-toggle -r "SynPS"
eval "$(ssh-agent)"
nextcloud &
flameshot &
nm-applet &
keepassxc &
ssh-add
# starting window manager
exec i3
