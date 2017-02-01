#!/usr/bin/env bash

# add diff-highlight to homebrew's bin dir
[ ! -e /usr/local/bin/diff-highlight ] && sudo ln -s /usr/share/git/diff-highlight/diff-highlight  /usr/local/bin/