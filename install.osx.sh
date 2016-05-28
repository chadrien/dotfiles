#!/bin/bash

sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

export DOTFILES_ROOT=`dirname $0`

[ ! -d '/opt' ] && sudo mkdir /opt && sudo chown `whoami`:staff /opt
[ ! -d '/usr/local/bin' ] && sudo mkdir -p /usr/local/bin && sudo chown `whoami`:staff /usr/local/bin

source $DOTFILES_ROOT/config/stow/env.sh
source $DOTFILES_ROOT/osx/homebrew.sh
source $DOTFILES_ROOT/config/init.sh

for file in `find $DOTFILES_ROOT -name '*.sh' -depth 2 -type f ! -path "$DOTFILES_ROOT/.git/*" ! -path "$DOTFILES_ROOT/config/*" ! -path "$DOTFILES_ROOT/osx/*"`; do
  source $file
done
