#!/usr/bin/env bash

sudo apt install -y vim

# Copy dotfiles
cp .vimrc ~/

# Copy custom indentations
ftplugin_dir="$HOME/.vim/after/ftplugin"
mkdir -p $ftplugin_dir
cp ./indent $ftplugin_dir