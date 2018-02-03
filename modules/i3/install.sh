#!/usr/bin/env bash

sudo apt install -y i3 rofi

# Copy dotfiles
i3_directory="$HOME/.config/i3"
mkdir -p $i3_directory
cp config $i3_directory