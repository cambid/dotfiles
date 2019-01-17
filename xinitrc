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
feh --bg-scale ~/.backgrounds/makepkg_not_war_flat-back.png
# starting helper programs
clipit -dn &
solaar &
redshift &
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
