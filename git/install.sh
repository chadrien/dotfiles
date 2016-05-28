#!/bin/bash

if [ "`uname`" = 'Darwin' ]; then
  [ ! -d "`brew --prefix git`" ] && brew install git
  [ ! -d "`brew --prefix gnupg`" ] && brew install gnupg
  [ ! -d "`brew --prefix hub`" ] && brew install hub
fi
