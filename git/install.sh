#!/bin/bash

! sudo gem list -i git-up >/dev/null 2>&1 && sudo gem install git-up

[ ! -d "$DOTFILES_ROOT/git/stow/home" ] && mkdir $DOTFILES_ROOT/git/stow/home

(cd $DOTFILES_ROOT/git/stow && stow -t $CONFIG_DIR conf.d && stow -t $HOME home)

[ ! -f "$HOME/.gitconfig" ] && cat <<EOF > "$HOME/.gitconfig"
[include]
	path = ~/.gitconfig.shared
EOF
