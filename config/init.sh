#!/bin/bash

mkdir -p $CONFIG_DIR

[ `uname` = 'Darwin' ] && source $DOTFILES_ROOT/config/osx.sh

(cd $DOTFILES_ROOT/osx/stow && stow -t $CONFIG_DIR conf.d)
(cd $DOTFILES_ROOT/config && stow -t `dirname $CONFIG_DIR` stow)
