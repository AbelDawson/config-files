#!/bin/bash

sudo apt-get update && sudo apt-get upgrade && sudo apt-get install git && sudo apt-get install vim && sudo apt-get install i3-wm && sudo apt-get install i3status && sudo apt-get install rofi && sudo apt-get install htop && sudo apt-get install compton && sudo apt-get install curl && sudo apt install feh && sudo apt-get install terminator   

sudo snap install discord

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

I3=~/.config/i3
TERM=~/.config/terminator

if [ -f "$I3" ]; then
	echo "$I3" exists
else 
	echo mkdir "$I3"
	mkdir "$I3"
fi

if [ -f "$TERM" ]; then
	echo "$TERM" exists.
else
	echo mkdir "$TERM"
	mkdir "$I3"
fi


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
