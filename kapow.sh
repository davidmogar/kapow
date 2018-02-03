#!/usr/bin/env bash

readonly FILE_INSTALL='install.sh'
readonly FILE_REPOSITORY='repository.sh'
readonly PATH_MODULES='modules/*/'
readonly PATH_ROOT="$PWD"

function configure_repositories {
    for directory in $PATH_MODULES
    do
        cd $directory
        if [ -f $FILE_REPOSITORY ]
        then
            echo "Configuring repositories for module '$(basename $directory)''"
            source $FILE_INSTALL
        fi
        cd $PATH_ROOT
    done
}

function install_modules {
    for directory in $PATH_MODULES
    do
        cd $directory
        if [ -f $FILE_INSTALL ]
        then
            echo "Installing module '$(basename $directory)'"
            source $FILE_INSTALL
        fi
        cd $PATH_MODULES
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