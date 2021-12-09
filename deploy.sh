#!/bin/bash

echo	"Deploying .xinitrc"
cp config/.xinitrc $HOME/.xinitrc
echo	"Deploying sxhkdrc"
cp config/sxhkdrc $HOME/.config/sxhkd

