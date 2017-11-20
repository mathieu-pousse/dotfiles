#!/bin/bash

DOTFILES_ROOT=$(cd $(dirname $0); pwd)

function bind() {
  ln -nfs $DOTFILES_ROOT/$1 $HOME/$1
}

# install git
sudo apt install git git-extras
bind ".gitconfig"

# configure vim
sudo apt-get install vim-gui-common
mkdir -p $HOME/.vimrc/colors
curl https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -o $HOME/.vimrc/colors/solarized.vim
bind ".vimrc"

# let's add style!
git clone --depth=1 https://github.com/ryanoasis/nerd-fonts /tmp && /tmp/nerd-fonts/install.sh

curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.ansi-dark -O $HOME/.dircolors.ansi-dark

# install zsh
sudo apt install zsh fonts-powerline
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

bind ".zshrc"
bind ".config/xfce4/terminal/terminalrc"
