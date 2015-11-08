#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# echo $@ > ~/xinitrc.log

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[ -f /etc/xprofile ] && source /etc/xprofile
[ -f ~/.xprofile ] && source ~/.xprofile

DEFAULT_SESSION=twm

if [ ! -z "$1" ]; then
  # exec ck-launch-session $1
  exec $1
else
  exec $DEFAULT_SESSION
fi
