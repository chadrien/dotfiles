export EDITOR=nvim

autoload -U promptinit; promptinit
prompt spaceship


export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh

source /usr/share/autoenv-git/activate.sh

alias mux=tmuxinator

## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt inc_append_history     # add commands to HISTFILE in order of execution
setopt share_history          # share command history data

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

fpath=(/usr/share/zsh/site-functions $fpath)

# The following lines were added by compinstall
zstyle :compinstall filename '/home/hdec/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey -v
bindkey '^R' history-incremental-search-backward

zstyle ':completion:*' menu select

bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# alias heroku="$(nvm which heroku) $(which -p heroku)"
alias remove-orphan-packages="yay -Rns $(yay -Qtdq)"
alias reload="source $HOME/.zshrc"
