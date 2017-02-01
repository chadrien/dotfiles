#!/usr/bin/env bash

# create ~/.gitconfig to include our generate gitconfig
[ ! -f "$HOME/.gitconfig" ] && cat <<EOF > "$HOME/.gitconfig"
[include]
	path = ~/.gitconfig.shared
EOF
