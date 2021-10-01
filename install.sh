#!/usr/bin/env bash

function get_dotfiles () {
    rm -rf ~/.dotfiles
    git clone https://github.com/ale-floc/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles && ansible-playbook playbook.yml --ask-become-pass
}

sudo apt update
sudo apt -y install curl git ansible
#ansible-playbook playbook.yml --ask-become-pass
get_dotfiles
