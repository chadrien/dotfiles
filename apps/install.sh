#!/bin/bash

(cd $DOTFILES_ROOT/apps/stow && stow -t $CONFIG_DIR conf.d)
