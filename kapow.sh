#!/usr/bin/env bash

readonly MODULES_PATH='./modules/'

function configure_repositories {
    for directory in $MODULES_PATH
    do
        file="$directory/repository.sh"
        if [ -f $file ]
        then
            echo "Configuring repositories for module '$(basename $directory)''"
            source $file
        fi
    done
}

function install_modules {
    for directory in $MODULES_PATH
    do
        file="$directory/install.sh"
        if [ -f $file ]
        then
            echo "Installing module '$(basename $directory)'"
            source $file
        fi
    done
}

function update_system {
    echo 'Updating the system'
    sudo apt -y update
    sudo apt -y upgrade
    sudo apt-get -y autoremove
}

configure_repositories
update_system
install_modules