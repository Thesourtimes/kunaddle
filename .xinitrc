#!/bin/sh
setxkbmap tr &
#pipewire &
#pipewire-pulse &
#wireplumber &
mpd &
picom -f --config "$XDG_CONFIG_HOME/picom.config" &
xwallpaper --stretch $X_WALLPAPER &
exec dwmblocks &
unclutter --timeout 60 &
xss-lock slock &
rpiplay -n "Apple TV" &
/usr/lib/kdeconnectd &
batsignal &
dunst &
wmname LG3D &
exec dwm
