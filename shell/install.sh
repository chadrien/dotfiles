#!/bin/bash

[ ! -d "$HOME/.oh-my-zsh" ] && git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh

TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
if [ "$TEST_CURRENT_SHELL" != "zsh" ]; then
  sudo chsh -s $HOMEBREW_ROOT/bin/zsh chadrien
fi

(cd $DOTFILES_ROOT/shell/stow && stow -t $HOME home && stow -t $CONFIG_DIR conf.d)
