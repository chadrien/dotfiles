#!/usr/bin/env bash

if [ ! -d "$HOMEBREW_ROOT" ]; then
  git clone https://github.com/Homebrew/brew $HOMEBREW_ROOT
  export PATH=$HOMEBREW_ROOT/bin:$PATH
  brew update
  brew tap homebrew/bundle
fi

(cd $DOTFILES_ROOT; brew bundle --no-upgrade)

sudo launchctl config user path $PATH