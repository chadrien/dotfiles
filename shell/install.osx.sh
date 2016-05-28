#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

[ ! -d "`brew --prefix zsh`" ] && brew install zsh
[ ! -d "`brew --prefix tmux`" ] && brew install tmux
[ ! -d "`brew --prefix ack`" ] && brew install ack
[ ! -d "`brew --prefix gnu-sed`" ] && brew install gnu-sed --with-default-names
[ ! -d "`brew --prefix thefuck`" ] && brew install thefuck
[ ! -d "`brew --prefix tree`" ] && brew install tree
