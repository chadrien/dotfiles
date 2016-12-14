[ -f $HOME/.config/env.sh ] && source $HOME/.config/env.sh

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
DISABLE_AUTO_TITLE="true"

plugins=(git tmux tmuxinator z zsh-syntax-highlighting npm docker)

ZSH_TMUX_AUTOCONNECT="false"

[ -f "${HOME}/.zshrc.local" ] && source "${HOME}/.zshrc.local"

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

source $HOMEBREW_ROOT/opt/autoenv/activate.sh