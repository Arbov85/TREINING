#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
    #The host is based on the Arch. Run the pacman update command
    sudo pacman -Syu
fi

if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file
then
    #The host is based on the Debian or Ubuntu
    #Run the apt version of the command
    sudo apt update
    sudo apt dist-upgrade
fi


