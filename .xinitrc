#!/bin/sh
setxkbmap tr &
#pipewire &
#pipewire-pulse &
#wireplumber &
picom -f --config "$XDG_CONFIG_HOME/picom.config" &
xwallpaper --stretch "$HOME/Pictures/wallpaper.jpg" &
exec dwmblocks &
#unclutter --timeout 60 &
wmname LG3D &
exec dwm
