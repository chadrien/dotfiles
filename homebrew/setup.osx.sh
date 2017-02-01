#!/usr/bin/env bash

if [ ! -d "$HOMEBREW_ROOT" ]; then
  git clone https://github.com/Homebrew/Homebrew $HOMEBREW_ROOT
  export PATH=$HOMEBREW_ROOT/bin:$PATH
  brew tap homebrew/bundle
fi

(cd $DOTFILES_ROOT; brew bundle)

brew autoupdate --start --cleanup

sudo launchctl config user path $PATH