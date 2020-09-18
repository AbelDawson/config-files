#!/bin/bash

sudo apt-get update && sudo apt-get upgrade && sudo apt-get install git && sudo apt-get install vim && sudo apt-get install i3wm && sudo apt-get install i3status && sudo apt-get install rofi && sudo apt-get install htop

cp config ~/config/i3
cp vimrc ~
mv ~/vimrc ~/.vimrc

