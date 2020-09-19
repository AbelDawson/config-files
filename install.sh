#!/bin/bash

sudo pacman -Syu git vim i3-wm i3status-rist rofi feh terminator picom


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

I3=~/.config/i3
TERM=~/.config/terminator

echo mkdir "$I3"
mkdir "$I3"
	
echo mkdir "$TERM"
mkdir "$TERM"

echo cp config ~/.config/i3
cp config ~/.config/i3
echo cp vimrc ~
cp vimrc ~
echo mv ~/vimrc ~/.vimrc
mv ~/vimrc ~/.vimrc
echo cp bear.jpg ~/Pictures
cp bear.jpg ~/Pictures
echo cp terminator-config ~/.config/terminator
cp terminator-config ~/.config/terminator
echo mv ~/.config/terminator/terminator-config ~/.confgi/terminator/config
mv ~/.config/terminator/terminator-config ~/.config/terminator/config
echo cp status.toml ~/.config/i3
cp status.toml ~/.config/i3
