#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

[ ! -d "`brew --prefix git`" ] && brew install git
[ ! -d "`brew --prefix gpg2`" ] && brew install gpg2
[ ! -d "`brew --prefix hub`" ] && brew install hub
! sudo gem list -i git-up >/dev/null 2>&1 && sudo gem install git-up
