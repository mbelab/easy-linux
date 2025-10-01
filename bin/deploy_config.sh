#!/usr/bin/env bash


# Deploy config script
# mbelab - Michael Berghammer


# script
echo 'Deploy config files...'

cp -f ./etc/bash/.bash_aliases ~/.bash_aliases
cp -f ./etc/git/.gitconfig ~/.gitconfig
