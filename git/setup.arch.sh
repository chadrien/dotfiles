#!/usr/bin/env bash

# install git-up
yaourt -S --needed ruby-git-up

# add diff-highlight to homebrew's bin dir
[ ! -e /usr/local/bin/diff-highlight ] && sudo ln -s /usr/share/git/diff-highlight/diff-highlight  /usr/local/bin/