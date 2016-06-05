#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

[ ! -d "$HOME/.gnupg" ] && mkdir $HOME/.gnupg

(cd $DOTFILES_ROOT/git/stow && stow -t $HOME/.gnupg .gnupg)
