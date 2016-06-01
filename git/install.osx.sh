#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

[ ! -d "`brew --prefix git`" ] && brew install git
[ ! -d "`brew --prefix gnupg`" ] && brew install gnupg
[ ! -d "`brew --prefix gpg2`" ] && brew install gpg2
[ ! -d "`brew --prefix hub`" ] && brew install hub
! sudo gem list -i git-up && sudo gem install git-up
