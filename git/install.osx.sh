#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

[ ! -e $HOMEBREW_ROOT/bin/diff-highlight ] && ln -s $HOMEBREW_ROOT/opt/git/share/git-core/contrib/diff-highlight/diff-highlight $HOMEBREW_ROOT/bin/