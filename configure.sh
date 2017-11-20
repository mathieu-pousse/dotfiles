#!/bin/bash

DOTFILES_ROOT=$HOME/projects/dotfiles/

function bind() {
  ln -nfs $DOTFILES_ROOT/$1 $HOME/$1
}

# install git
sudo apt install git git-extras
bind ".gitconfig"

curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark -O $HOME/.dircolors.ansi-dark

# install zsh
sudo apt install zsh fonts-powerline
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
bind ".zshrc"
bind ".config/xfce4/terminal/terminalrc"
