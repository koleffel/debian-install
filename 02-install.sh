#!/bin/bash


####### Start Installing the Software We need !!! #################

echo " First Lets set up and Install the FLATPAK ! "

sudo apt install flatpak -y

sudo apt install gnome-software-plugin-flatpak

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo


echo " We will install some Flatpak Software now ! "

# Firefox

echo "Install Firefox : "

flatpak install flathub org.mozilla.firefox -y

# OnlyOffice

echo "Install OnlyOffice : "

flatpak install flathub org.onlyoffice.desktopeditors -y

# KDENLIVE

echo "Install Kdenlive :"

flatpak install flathub org.kde.kdenlive -y

# OBS Studio

echo "Install Obs Studio :"

flatpak install flathub com.obsproject.Studio -y

# Audacity

echo "Install Audacity :"

flatpak install flathub org.audacityteam.Audacity -y

# VS Code

echo "Install VS CODE :"

flatpak install flathub com.visualstudio.code -y

# QBittorrent

echo "Install QBittorrent"

flatpak install flathub org.qbittorrent.qBittorrent -y

# VLC

echo " Install VLC : "

flatpak install flathub org.videolan.VLC -y

# Install GIT and wget 

sudo apt install git wget -y

# Install Sublime Text from the official website

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null 

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get install sublime-text -y







