#!/bin/bash

[ ! -d "$DOTFILES_ROOT/git/stow/home" ] && mkdir $DOTFILES_ROOT/git/stow/home

if [ ! -f "$DOTFILES_ROOT/git/stow/home/.gitconfig" ]; then
  read -p 'Your git usename: ' username
  read -p 'Your git email: ' email
  sed \
    -e "s/USERNAME/${username}/" \
    -e "s/EMAIL/${email}/" \
    $DOTFILES_ROOT/git/gitconfig.template > $DOTFILES_ROOT/git/stow/home/.gitconfig
fi

(cd $DOTFILES_ROOT/git/stow && stow -t $CONFIG_DIR conf.d && stow -t $HOME home)
