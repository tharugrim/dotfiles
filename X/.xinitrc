#!/bin/sh
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# music player daemon
mpd &

# set wallpaper
feh --bg-fill ~/images/wallpaper/wallpaper-59928.png &

# X settings
#xrdb -override ~/.Xresources & 

# start low battery notification daemon
battery-thingy 25 "$HOME/bin/battery-low-action.sh" 30 BAT0 &

# shortcuts 
sxhkd &

# start remind daemon
#remind '-kecho REM%s > $PANEL_FIFO' -z .reminders &

# start gpg-agent
eval $(gpg-agent --daemon) &

# set wm name for compitability reasons
#wmname LG3D &

# don't use HDMI for sound
pactl set-card-profile 0 output:analog-stereo+input:analog-stereo

# custom keyboard settings
#xmodmap /home/tobias/.xmodmap &

while true;
do
    fetchmail > /dev/null;
    echo "BAT$(acpi | cut -d' ' -f4 | cut -d% -f1)" >> /tmp/panel-fifo
    sleep 100;
done &

# set rctl and ralt as compose keys
setxkbmap -option compose:ralt

eval `dircolors /home/tobias/misc/dircolors.custom`

# start the window manager
exec herbstluftwm --verbose
