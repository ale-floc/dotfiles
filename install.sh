#!/usr/bin/env bash

function get_dotfiles () {
    rm -rf /tmp/dotfiles
    git clone https://github.com/ale-floc/dotfiles.git /tmp/dotfiles
    cd /tmp/dotfiles && ansible-playbook playbook.yml --ask-become-pass
}

sudo apt -y install curl git ansible
get_dotfiles
