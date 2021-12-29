#!/bin/bash

echo	"Deploying .xinitrc"
cp config/.xinitrc $HOME/.xinitrc
echo	"Deploying sxhkdrc"
cp config/sxhkdrc $HOME/.config/sxhkd

echo	"Deploying home dotfiles"
cp config/.zshrc $HOME

echo	"Deploying block supplicant scripts"
chmod +x scripts/block-supplicant/*
sudo cp scripts/block-supplicant/* /usr/bin 

echo	"Deploying /etc files"
sudo cp config/etc/* /etc
