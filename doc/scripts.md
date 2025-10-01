# scripts

Scripts for linux setup and maintenance.

- [install_core](#install_core)
- [install_collection](#install_collection)
- [setup_firewall](#setup_firewall)
- [update_sys](#update_sys)
- [deploy_config](#deploy_config)

## install_core

Install core packages.

    $ ./bin/install_core.sh

## install_collection

Install applications per collection.
See script for collections and packages.

    $ ./bin/install_collection.sh               # list possible collections
    $ ./bin/install_collection.sh desktop       # install base desktop packages
    $ ./bin/install_collection.sh flatpak       # install and setup flatpak
    $ ./bin/install_collection.sh office        # install office collection
    $ ./bin/install_collection.sh media         # install media collection

> **Note:** Run **install_core** script before to ensure installed core packages.

## setup_firewall

Setup firewall with default settings (deny incoming, allow outgoing).

    $ ./bin/setup_firewall.sh

> **Note:** Run **install_core** script before to ensure installed core packages.

## update_sys

Update system packages, without or including flatpak applications.

    $ ./bin/update_sys.sh                       # update system including flatpak
    $ ./bin/update_sys.sh true                  # update system including flatpak
    $ ./bin/update_sys.sh false                 # update system without flatpak

> **Note:** This script fully updates distribution (apt-get dist-upgrade).

## deploy_config

Deploys given configuration files from *./etc* to *~/*.

    $ ./bin/deploy_config.sh
