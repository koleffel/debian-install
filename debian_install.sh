#! /bin/bash

echo "#########################################################"

echo "Please BACKUP ALL your DATA BEFORE you start the script !!!"

echo "#########################################################"

echo "Are you Ready ?"

echo "Update / Upgrade the System First :"

sudo apt update && sudo apt dist-upgrade && sudo apt autoremove -y

echo  -n "Do you Want To Install the NVIDIA Drivers ? 'y' or 'n' : "

read -r NVIDIA

if [["$NVIDIA" == "yes" || "$NVIDIA" == "y" || "$NVIDIA" == "Y"]]
then
    sudo apt install nvidia-driver
fi

echo "Install FLATPAK :"

sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo



echo "Remove ALL the Gnome-Games "

sudo apt purge gnome-2048 aisleriot atomix gnome-chess five-or-more hitori iagno gnome-klotski lightsoff gnome-mahjongg gnome-mines gnome-nibbles quadrapassel four-in-a-row gnome-robots gnome-sudoku swell-foop tali gnome-taquin gnome-tetravex -y & sudo apt autoremove -y

echo "Remove ALL the KDE PIM packages : "

sudo apt purge akonadi* -y && sudo apt autoremove -y

echo "Remove the FIREFOX ESR version , Konqueror and Transmission : "

sudo apt purge firefox-esr konqueror transmission -y && sudo apt autoremove -y

echo "Remove the cheese, Dragon Player, JuK , gnome-music , Libre Office and Evolution : "

sudo apt purge cheese dragonplayer juk gnome-music  libreoffice evolution libreoffice-calc libreoffice-draw libreoffice-impress libreoffice-writer -y  && sudo apt autoremove -y

echo "Install VLC and mpv :"

sudo apt install vlc mpv -y

echo "Installing Software form FLATPAK :"

echo "Install Firefox : "

flatpak install flathub org.mozilla.firefox -y

echo "Install OnlyOffice : "

flatpak install flathub org.onlyoffice.desktopeditors -y


echo  -n " Do you want to install Wine-Staging for Gaming and Windows emulation ? 'y' or 'n'  : "

read -r WINE

if [["$WINE" == "y" || "$WINE" == "yes"]]
then
    sudo dpkg --add-architecture i386

    sudo mkdir -pm755 /etc/apt/keyrings

    sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

    sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources

    sudo apt update

    sudo apt install --install-recommends winehq-staging -y

fi


echo -n "Do You Want To Install Steam and Lutris for some Gaming ? 'y' or 'n' :  "

read -r GAME

if [["$GAME" == "y" || "$GAME" == "yes" || "$GAME" == "Y"]]
then
     flatpak install flathub com.valvesoftware.Steam -y

     flatpak install flathub net.lutris.Lutris -y

fi

echo "Install Kdenlive :"

flatpak install flathub org.kde.kdenlive -y

echo "Install Obs Studio :"

flatpak install flathub com.obsproject.Studio -y

echo "Install Audacity :"

flatpak install flathub org.audacityteam.Audacity -y

echo "Install VS CODE :"

flatpak install flathub com.visualstudio.code -y

echo "##################"

echo "You Are Ready !!!"

echo "##################"

echo "Please REBOOT NOW !!!"

echo "##################"







