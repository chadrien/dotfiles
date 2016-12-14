#!/usr/bin/env bash

[ ! -d "$HOME/.oh-my-zsh" ] && git clone https://github.com/robbyrussell/oh-my-zsh $HOME/.oh-my-zsh
[ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting