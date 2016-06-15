#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

[ ! -d "$HOME/.gnupg" ] && mkdir $HOME/.gnupg

(cd $DOTFILES_ROOT/git/stow && stow -t $HOME/.gnupg .gnupg)

ln -s $HOMEBREW_ROOT/opt/git/share/git-core/contrib/diff-highlight/diff-highlight $HOMEBREW_ROOT/bin/