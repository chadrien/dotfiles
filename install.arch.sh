#!/usr/bin/env bash

export DOTFILES_ROOT=`dirname $0`

(cd $DOTFILES_ROOT; stow -t $HOME stow)
(cd $DOTFILES_ROOT; stow -t $HOME stow-arch)