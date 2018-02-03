#!/usr/bin/env bash

sudo apt install -y i3 rofi

# Copy dotfiles
i3_directory="$HOME/.config/"
mkdir -p $i3_directory
cp i3 $i3_directory