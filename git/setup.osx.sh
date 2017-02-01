#!/usr/bin/env bash

# install git-up gem
! sudo gem list -i git-up >/dev/null 2>&1 && sudo gem install git-up

# add diff-highlight to homebrew's bin dir
[ ! -e $HOMEBREW_ROOT/bin/diff-highlight ] && ln -s $HOMEBREW_ROOT/opt/git/share/git-core/contrib/diff-highlight/diff-highlight $HOMEBREW_ROOT/bin/
