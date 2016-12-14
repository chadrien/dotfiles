#!/usr/bin/env bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for font in $(find "$DOTFILES_ROOT/fonts" -type f -not -name 'setup.sh'); do
  cp "${font// /\ }" ~/Library/Fonts
done

IFS=$SAVEIFS