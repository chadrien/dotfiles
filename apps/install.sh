#!/bin/bash

# atom
! apm list | grep editorconfig >/dev/null && apm install editorconfig
! apm list | grep terminal-plus >/dev/null && apm install terminal-plus
! apm list | grep project-plus >/dev/null && apm install project-plus
! apm list | grep data-atom >/dev/null && apm install data-atom
! apm list | grep seti-ui >/dev/null && apm install seti-ui
! apm list | grep vim-mode >/dev/null && apm install vim-mode
! apm list | grep ex-mode >/dev/null && apm install ex-mode
! apm list | grep relative-numbers >/dev/null && apm install relative-numbers
! apm list | grep expand-region >/dev/null && apm install expand-region

(cd $DOTFILES_ROOT/apps/stow && stow -t $HOME home)
