#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

! sudo gem list -i git-up >/dev/null 2>&1 && sudo gem install git-up

[ ! -d "$HOME/.gnupg" ] && mkdir $HOME/.gnupg

(cd $DOTFILES_ROOT/git/stow && stow -t $HOME/.gnupg .gnupg)
