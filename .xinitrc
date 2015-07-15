#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

echo $@ > ~/xinitrc.log

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

DEFAULT_SESSION=twm

case $1 in
xmonad)
	xcompmgr -c &
	[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
	xsetroot -cursor_name left_ptr
	xscreensaver -no-splash &         # starts screensaver daemon
	urxvtd -f -o -q
	trayer --edge top --align right --expand true --SetDockType true --SetPartialStrut true --tint 0x000000 --alpha 0 --transparent true --height 17 --width 10 &
	feh --bg-scale Pictures/vim-shortcuts-blue-1920x1200.png
	exec xmonad
	;;
*)
	if [ ! -z "$1" ]; then
	  exec $1
	else
	  exec $DEFAULT_SESSION
	fi
	;;
esac
