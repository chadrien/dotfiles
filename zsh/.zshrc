# zmodload zsh/zprof

export DOCKER_HOST="tcp://localhost:2375"
export DISPLAY=:0
export EDITOR=nvim
export PATH=$HOME/.local/bin:$PATH
export GOPATH=$HOME/.go

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
## History binding
bindkey '^R' history-incremental-search-backward

zstyle ':completion:*' menu select
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

alias reload="source $HOME/.zshrc"
alias mux=tmuxinator
alias choco=choco.exe
alias pbcopy=pbcopy.exe
alias pbpaste=pbpaste.exe

#################################
############# Zplug #############
#################################

source /usr/share/zplug/init.zsh

zplug themes/norm, from:oh-my-zsh, as:theme, defer:2

export NVM_DIR="$HOME/.nvm"
# export NVM_LAZY_LOAD=true
zplug lukechilds/zsh-nvm, defer:2

export AUTOENV_FILE_ENTER=.env
zplug Tarrasch/zsh-autoenv, defer:2

zplug zsh-users/zsh-syntax-highlighting, defer:2

zplug zsh-users/zsh-history-substring-search, defer:2
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

zplug plugins/tmuxinator, from:oh-my-zsh, defer:2

# Install plugins if there are plugins that have not been installed
# if ! zplug check --verbose; then
#     printf "Install? [y/N]: "
#     if read -q; then
#         echo; zplug install
#     fi
# fi

zplug load #--verbose

export PATH=$ZPLUG_BIN:$PATH

#################################
########### Zplug end ###########
#################################

test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)

export PATH=$(echo $PATH | sed -e 's#/mnt/c/Program Files/nodejs##')
