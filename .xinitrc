#!/bin/sh
setxkbmap tr &
picom -f --config "$XDG_CONFIG_HOME/picom.config" &
dunst &
xwallpaper --stretch $X_WALLPAPER &
exec dwmblocks &
unclutter --timeout 60 &
DISPLAY=LVDS-1 exec dwm > $HOME/.dwm.log 
