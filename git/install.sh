#!/bin/bash

[ ! -d "$DOTFILES_ROOT/git/stow/home" ] && mkdir $DOTFILES_ROOT/git/stow/home

(cd $DOTFILES_ROOT/git/stow && stow -t $CONFIG_DIR conf.d && stow -t $HOME home)

PATH=$DOTFILES_ROOT/vendors/crudini:$PATH

[ ! -f "$HOME/.gitconfig" ] && cat <<EOF > "$HOME/.gitconfig"
[include]
	path = ~/.gitconfig.shared
EOF
