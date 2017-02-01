#!/usr/bin/env bash

# ensure with have sudo available
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

export DOTFILES_ROOT=`dirname $0`

[ ! -d '/opt' ] && sudo mkdir /opt && sudo chown `whoami`:staff /opt
[ ! -d '/usr/local/bin' ] && sudo mkdir -p /usr/local/bin && sudo chown `whoami`:staff /usr/local/bin

export HOMEBREW_ROOT=/opt/homebrew
export PATH=$HOMEBREW_ROOT/bin:/usr/local/bin:$PATH

# install homebrew stuff, to do before anything else
source $DOTFILES_ROOT/homebrew/setup.osx.sh

# run remaining setups
for dir in $(find $DOTFILES_ROOT -type d -depth 1 -not -name 'stow*' -not -name 'homebrew'); do
  [ -f "${dir}/setup.sh" ] && source "${dir}/setup.sh"
  [ -f "${dir}/setup.osx.sh" ] && source "${dir}/setup.osx.sh"
done

(cd $DOTFILES_ROOT; stow -t $HOME stow)
(cd $DOTFILES_ROOT; stow -t $HOME stow-osx)
