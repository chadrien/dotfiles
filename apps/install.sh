#!/bin/bash

# atom
! apm list | grep editorconfig >/dev/null && apm install editorconfig
! apm list | grep terminal-plus >/dev/null && apm install terminal-plus
! apm list | grep project-plus >/dev/null && apm install project-plus
! apm list | grep data-atom >/dev/null && apm install data-atom
! apm list | grep seti-ui >/dev/null && apm install seti-ui

(cd $DOTFILES_ROOT/apps/stow && stow -t $HOME home)
