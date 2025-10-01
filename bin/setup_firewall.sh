#!/usr/bin/env bash


# Setup firewall script (sudo)
# mbelab - Michael Berghammer

# Script defaults ufw to deny incoming and allow outgoing connections.


# script
sudo -v

# setup ufw
echo 'Setup ufw firewall with default settings...'
sudo ufw reset
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
echo
sudo ufw status verbose
echo
