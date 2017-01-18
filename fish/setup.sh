#!/usr/bin/env bash

TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
if [ "$TEST_CURRENT_SHELL" != "fish" ]; then
  sudo chsh -s $HOMEBREW_ROOT/bin/fish $(whoami)
fi