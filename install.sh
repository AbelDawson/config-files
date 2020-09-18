#!/bin/bash

sudo apt-get update && sudo apt-get upgrade && sudo apt-get install git && sudo apt-get install vim && sudo apt-get install i3-wm && sudo apt-get install i3status && sudo apt-get install rofi && sudo apt-get install htop && sudo apt-get install compton && sudo apt-get install discord

cp config ~/.config/i3
cp vimrc ~
mv ~/vimrc ~/.vimrc
cp bear.jpg ~/Pictures

