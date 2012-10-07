#!/bin/sh
$HOME/bin/wallpaper &
$HOME/bin/myxorg.sh &
xsetroot -cursor_name left_ptr
setxkbmap -option 'ctrl:swapcaps'
unclutter -root -idle 2 &  #kill inactive cursor
setxkbmap us -variant colemak
#startxfce4
exec xmonad
