#!/usr/bin/env bash


# Install collection script (sudo)
# mbelab - Michael Berghammer

# Script is for Debian and therefore uses apt as package manager.
# Script is for KDE desktops and therefore installs KDE packages.
# Script also installs flatpak (and possibly applications).


# defines
FLATHUB_REPO='https://dl.flathub.org/repo/flathub.flatpakrepo'


# script
sudo -v
collection="$1"

# call update_sys.sh (without flatpak update) to ensure up-to-date system before install
source update_sys.sh false

# handle missing collection
if [ -z $collection ]
then
    echo 'No collection provided.'
    echo 'Call script with one of the following collections:'
    echo '- desktop'
    echo '- flatpak'
    echo '- office'
    echo '- media'
    echo '- gaming'
    echo '- sw-dev'
    echo '- el-dev'
    echo '- web-dev'
    echo '- mech-dev'
    echo
    echo 'Run script with collections desktop and flatpak at first to ensure proper setup.'
    echo

    exit 0
fi

# install collection: desktop
if [ $collection = 'desktop' ]
then
    echo 'Install collection: desktop'
    sudo apt-get install -y plasma-firewall plasma-systemmonitor
    sudo apt-get install -y konsole dolphin ark partitionmanager filelight sweeper gparted
    echo
fi

# install collection: flatpak
if [ $collection = 'flatpak' ]
then
    echo 'Install collection: flatpak'
    sudo apt-get install -y flatpak plasma-discover-backend-flatpak flatseal
    echo
    flatpak remote-add --if-not-exists flathub $FLATHUB_REPO
    echo
fi

# install collection: office
if [ $collection = 'office' ]
then
    echo 'Install collection: office'
    sudo apt-get install -y firefox-esr thunderbird libreoffice okular texstudio
    echo
    flatpak install -y org.onlyoffice.desktopeditors
    echo
fi

# install collection: media
if [ $collection = 'media' ]
then
    echo 'Install collection: media'
    sudo apt-get install -y gwenview gimp juk audacity vlc kdenlive obs-studio
    echo
fi

# install collection: gaming
if [ $collection = 'gaming' ]
then
    echo 'Install collection: gaming'
    sudo apt-get install -y 0ad supertux supertuxkart
    echo
    flatpak install -y com.valvesoftware.Steam net.lutris.Lutris
    echo
fi

# install collection: sw-dev
if [ $collection = 'sw-dev' ]
then
    echo 'Install collection: sw-dev'
    sudo apt-get install -y code doxygen pandoc php-cli sqlitebrowser
    echo
fi

# install collection: el-dev
if [ $collection = 'el-dev' ]
then
    echo 'Install collection: el-dev'
    sudo apt-get install -y octave wireshark
    echo
    flatpak install -y org.kicad.KiCad
    echo
fi

# install collection: web-dev
if [ $collection = 'web-dev' ]
then
    echo 'Install collection: web-dev'
    sudo apt-get install -y mycli phpliteadmin phpmyadmin phppgadmin
    echo
fi

# install collection: mech-dev
if [ $collection = 'mech-dev' ]
then
    echo 'Install collection: mech-dev'
    sudo apt-get install -y freecad blender
    echo
fi

# print user message for restart
echo 'Installation finished.'
echo 'You may want to reboot.'
echo
