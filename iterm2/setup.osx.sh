#!/usr/bin/env bash

! /usr/libexec/PlistBuddy -c "print :'Custom Color Presets':'Solarized Dark'" $HOME/Library/Preferences/com.googlecode.iterm2.plist >/dev/null 2>&1 && eval `cat $DOTFILES_ROOT/iterm2/iterm_solarized | tr "\n" " "`
defaults write com.googlecode.iterm2 PromptOnQuit -bool false