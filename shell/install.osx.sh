#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

[ ! -d "`brew --prefix zsh`" ] && brew install zsh
[ ! -d "`brew --prefix tmux`" ] && brew install tmux
