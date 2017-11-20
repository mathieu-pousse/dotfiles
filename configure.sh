#!/bin/bash

DOTFILES_ROOT=$HOME/projects/dotfiles/

function bind() {
  ln -nfs $DOTFILES_ROOT/$1 $HOME/$1
}

# install git
sudo apt install git git-extras
bind ".gitconfig"

# install zsh
sudo apt install zsh fonts-powerline
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
bind ".zshrc"
