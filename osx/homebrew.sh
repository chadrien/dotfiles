#!/bin/bash

if [ ! -d "$HOMEBREW_ROOT" ]; then
  git clone https://github.com/Homebrew/Homebrew $HOMEBREW_ROOT
  export PATH=$HOMEBREW_ROOT/bin:$PATH
  brew tap caskroom/cask
  brew update
fi
