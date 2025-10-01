#!/usr/bin/env bash


# Update system script (sudo)
# mbelab - Michael Berghammer

# Script is for Debian and therefore uses apt as package manager.
# Script can also update flatpak (and applications).


# defines
DEFAULT_UPDATE_FLATPAK=true


# script
sudo -v
update_flatpak="$1"

# handle command line argument
if [ -z $update_flatpak ]
then
    update_flatpak=$DEFAULT_UPDATE_FLATPAK
fi

# update and upgrade
echo 'Update packages...'
sudo apt-get update
echo

echo 'Upgrade system...'
sudo apt-get dist-upgrade -y
echo

# clean up and check
echo 'Clean up...'
sudo apt-get clean -y
sudo apt-get autoclean -y
sudo apt-get autoremove -y
echo

echo 'Check dependencies...'
sudo apt-get check
echo

# update flatpak applications
if [ $update_flatpak = true ]
then
    echo 'Update flatpak applications...'
    flatpak update -y
    echo
fi
