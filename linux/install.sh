#!/usr/bin/bash

DIRNAME=$(dirname $(realpath "$0"))

sudo apt-get purge -y ace-of-penguins
sudo apt-get purge -y aisleriot
sudo apt-get purge -y gbrainy
sudo apt-get purge -y gnome-chess
sudo apt-get purge -y gnome-mines
sudo apt-get purge -y gnome-robots
sudo apt-get purge -y gnome-sudoku
sudo apt-get purge -y gnome-sushi
sudo apt-get purge -y gnome-taquin
sudo apt-get purge -y gnome-tetravex
sudo apt-get purge -y gnomine
sudo apt-get purge -y lightsoff
sudo apt-get purge -y mahjongg
sudo apt-get purge -y quadrapassel
sudo apt-get purge -y swell-foop
sudo apt-get clean -y
sudo apt-get autoremove -y
sudo service packagekit restart

sudo apt-get update
sudo apt-get upgrade -y

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get dist-upgrade -y

sudo apt-get install -y software-properties-common
sudo apt-get install -y gpg
sudo apt-get install -y build-essential
sudo apt-get install -y curl wget
sudo apt-get install -y zip unzip
sudo apt-get install -y git gh
sudo apt-get install -y ffmpeg vlc
sudo apt-get install -y xsel

sudo apt install -y flatpak
sudo apt install -y gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub "https://dl.flathub.org/repo/flathub.flatpakrepo"

cd '/tmp'

wget "https://github.com/fastfetch-cli/fastfetch/releases/download/2.21.0/fastfetch-linux-amd64.deb" -O "fastfetch-linux-amd64.deb"
sudo dpkg -i "fastfetch-linux-amd64.deb"

wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" -O "google-chrome-stable_current_amd64.deb"
sudo dpkg -i "google-chrome-stable_current_amd64.deb"
xdg-settings set default-web-browser google-chrome.desktop

cd -

sudo apt-get install -y zsh
sudo chsh -s $(which zsh)
