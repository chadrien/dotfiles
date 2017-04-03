#!/usr/bin/env bash

# ensure with have sudo available
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

export DOTFILES_ROOT=`dirname $0`

# install packages
packages=()
for package in $(cat $DOTFILES_ROOT/Archfile | grep -v '^#'); do
  packages+=($package)
done
yaourt -S --needed ${packages[@]} --noconfirm

# run setups
for dir in $(find $DOTFILES_ROOT -maxdepth 1 -type d -not -name 'stow*' -not -name 'homebrew'); do
  [ -f "${dir}/setup.sh" ] && source "${dir}/setup.sh"
  [ -f "${dir}/setup.arch.sh" ] && source "${dir}/setup.arch.sh"
done

# cleanup
yaourt -Qdt

(cd $DOTFILES_ROOT; stow -t $HOME stow)
(cd $DOTFILES_ROOT; stow -t $HOME stow-arch)