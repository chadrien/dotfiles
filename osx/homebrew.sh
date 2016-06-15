#!/bin/bash

if [ ! -d "$HOMEBREW_ROOT" ]; then
  git clone https://github.com/Homebrew/Homebrew $HOMEBREW_ROOT
  export PATH=$HOMEBREW_ROOT/bin:$PATH
  brew tap homebrew/bundle
  brew update
  brew autoupdate --start --upgrade --cleanup
fi

(cd $DOTFILES_ROOT; brew bundle)
