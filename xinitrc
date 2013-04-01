#!/bin/sh
systemd --user &
xsetroot -bg \#1c1c1c -mod 4 2 &

exec xmonad
