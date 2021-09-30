#!/usr/bin/env bash

function get_dotfiles () {
    git clone https://github.com/ale-floc/dotfiles.git /tmp/dotfiles
    cd /tmp/dotfiles && ansible-playbook playbook.yml --ask-become-pass
}

prompt=$(sudo -nv 2>&1)
if echo $prompt | grep -q '^sudo:'; then
  sudo -y apt install curl git ansible
else
  apt -y install curl git ansible
fi

get_dotfiles
