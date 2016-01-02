#!/bin/bash

export TOOLS_URI=https://raw.githubusercontent.com/justsml/system-setup-tools

sudo apt-get update && apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sleep 2s
printf "\n Oh My ZSH Instller Dunzo!\n"

cd ~/.vim/colors
[ ! -e ~/.zshrc ] && \
  curl --progress-bar \
    -o ~/.zshrc -SL $TOOLS_URI/master/home-scripts/.zshrc
