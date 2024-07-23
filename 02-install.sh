#!/bin/bash

###########################################################
##########  Created by KOLEFELL ###########################
########## e-mail : kolefell@proton.me ####################
###########################################################

####### Start Installing the Software We need !!! #################



# Install GIT and wget 

sudo apt install git wget -y

# Install Sublime Text from the official website

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null 

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get install sublime-text -y


############## WINE - STAGING ###################################
##############   for gaming   ###################################

# Install the Wine-staging for Gaming and Windows emulation

sudo dpkg --add-architecture i386

sudo mkdir -pm755 /etc/apt/keyrings

sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources

sudo apt update

sudo apt install --install-recommends winehq-staging -y









