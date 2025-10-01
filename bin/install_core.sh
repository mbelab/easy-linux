#!/usr/bin/env bash


# Install core system script (sudo)
# mbelab - Michael Berghammer

# Script is for Debian and therefore uses apt as package manager.


# script
sudo -v

# call update_sys.sh (without flatpak update) to ensure up-to-date system before install
source update_sys.sh false

# install core packages using apt
echo 'Install C/C++, gnu debugger and make...'
sudo apt-get install -y gcc g++ gdb make
echo

echo 'Install Python 3...'
sudo apt-get install -y python3 python3-setuptools python3-build python3-pip python3-virtualenv
echo

echo 'Install system related packages...'
sudo apt-get install -y ufw llvm parted tar gzip jq cron anacron parallel direnv
echo

echo 'Install network related packages...'
sudo apt-get install -y curl wget gpg ssh sshpass cifs-utils samba smbclient wakeonlan
echo

echo 'Install maintenance and service packages...'
sudo apt-get install -y nano mc htop fastfetch cockpit git sqlite3 sqlite-utils
echo

# print user message for restart
echo 'Installation finished.'
echo 'You may want to reboot.'
echo
