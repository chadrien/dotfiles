#!/bin/bash

mkdir -p $HOME/.config/nvim
(cd $DOTFILES_ROOT/neovim/stow && stow -t $HOME/.config/nvim nvim && stow -t $HOME home)

pip2 install --upgrade neovim
pip3 install --upgrade neovim

! which tsc > /dev/null && npm i -g typescript

[ ! -f $HOME/.config/nvim/autoload/plug.vim ] && curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
