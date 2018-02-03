#!/usr/bin/env bash

sudo apt install -y fish
chsh -s $(which fish)

# Install Oh My Fish
# https://github.com/oh-my-fish/oh-my-fish
#
curl -L https://get.oh-my.fish > install
fish install -y --noninteractive