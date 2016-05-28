#!/bin/bash

[ "`uname`" != 'Darwin' ] && return

[ ! -d "`brew --prefix node`" ] && brew install node
[ ! -d "`brew --prefix npm`" ] && brew install npm
