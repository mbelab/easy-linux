#!/usr/bin/env bash


# Deploy config script
# mbelab - Michael Berghammer


# defines
HOME_DIR=~


# script
echo 'Deploy config files...'

cp -f $MBENV_ROOT/etc/bash/.bash_aliases $HOME_DIR/.bash_aliases
cp -f $MBENV_ROOT/etc/git/.gitconfig $HOME_DIR/.gitconfig
