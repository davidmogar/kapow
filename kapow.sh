#!/usr/bin/env bash

readonly MODULES_PATH='./modules'

function configure_repositories {
    for directory in $MODULES_PATH
    do
        file="$directory/repository.sh"
        if [ ! -f $file ]
        then
            source $file
        fi
    done
}

function install_modules {
    for directory in $MODULES_PATH
    do
        source "$directory/install.sh"
    done
}

function update_system {
    sudo apt -y update
    sudo apt -y upgrade
}

configure_repositories
update_system
install_modules