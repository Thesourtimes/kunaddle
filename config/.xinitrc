#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi
# Keymap
setxkbmap tr &

# Resolution
xrandr --output LVDS-1 --mode 1920x1000 &

# Compositor
picom -f --config /home/kuna/.config/picom.config &

# Wallpaper
xwallpaper --stretch Pictures/wallpaper.jpg &

# DWMBlocks
exec dwmblocks &

# sxhkd
sxhkd &

# Unclutter
unclutter --timeout 60 &

# DWM
exec dwm
