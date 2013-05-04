#!/bin/sh
# initialize user session
#systemd --user &

# set wallpaper
feh --bg-scale ~/images/wallpapers/wallpaper-2477620.jpg &

# X settings
xrdb -override ~/.Xresources & 

# set the keyboard map
setxkbmap de &

# shortcuts
sxhkd &

# set the screensaver
xss slock &

# automount
devmon   &

# Music Player Daemon
mpd &

# mpdscribble daemon
mpdscribble -D &

# when to start the screensaver
xset s 900 & # sec

# set ls colors
eval `dircolors -b ~/.dircolors.custom` 

# custom keyboard settings
xmodmap ~/.xmodmap

# set the cursor
xsetroot -cursor_name left_ptr

# start the window manager
exec xmonad
