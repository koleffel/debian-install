#!/bin/bash

# Install the Wine-staging for Gaming and Windows emulation

sudo dpkg --add-architecture i386 

sudo mkdir -pm755 /etc/apt/keyrings

sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources

sudo apt update

sudo apt install --install-recommends winehq-staging -y


# Install Steam and Lutris 

echo " Installing Steam from Flathub : "

flatpak install flathub com.valvesoftware.Steam -y

echo " Installing Lutris from Flathub : "

flatpak install flathub net.lutris.Lutris -y

# I will be installing FLATSEAL for managing the Flatpak permissions

echo " Installing FLATSEAL : "

flatpak install flathub com.github.tchx84.Flatseal -y

##############################################

echo " You are ready to start gaming now !!! "

##############################################
