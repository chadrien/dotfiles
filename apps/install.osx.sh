#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

apps=(google-chrome amethyst alfred iterm2 atom intellij-idea dash)
for app in "${apps[@]}"; do
  ! brew cask list $app >/dev/null 2>&1 && brew cask install $app
done

# iterm2
! /usr/libexec/PlistBuddy -c "print :'Custom Color Presets':'Solarized Dark'" $HOME/Library/Preferences/com.googlecode.iterm2.plist >/dev/null 2>&1 && eval `cat $DOTFILES_ROOT/apps/iterm_solarized | tr "\n" " "`
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
cp $DOTFILES_ROOT/files/Monaco\ for\ Powerline.otf ~/Library/Fonts

# atom
! apm list | grep editorconfig >/dev/null && apm install editorconfig

# amethyst
defaults write com.amethyst.Amethyst.plist 'enables-layout-hud-on-space-change' -bool false
defaults write com.amethyst.Amethyst.plist 'layouts' -array 'fullscreen' 'tall' 'wide' 'column'
