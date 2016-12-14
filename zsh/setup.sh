#!/usr/bin/env bash

TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
if [ "$TEST_CURRENT_SHELL" != "zsh" ]; then
  sudo chsh -s $HOMEBREW_ROOT/bin/zsh $(whoami)
fi