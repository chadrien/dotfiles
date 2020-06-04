# zmodload zsh/zprof

export DISPLAY=:0
export EDITOR=nvim
export GOPATH=$HOME/.go
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

#export IP_ADDR=$(ifconfig eth0 | grep 'inet' | head -1 | awk '{print $2}')
#function copy-ip {
#  echo $IP_ADDR | pbcopy.exe
#}
test -f $HOME/.wsl2.zshrc && source $HOME/.wsl2.zshrc

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
alias tmux="tmux -u"
alias pbcopy=pbcopy.exe
alias pbpaste=pbpaste.exe

export ZPLUG_HOME=$HOME/src/dotfiles/vendors/zplug
[ -f $ZPLUG_HOME/init.zsh ] && source $ZPLUG_HOME/init.zsh

test -f $HOME/.local.zshrc && source $HOME/.local.zshrc

#################################
############# Zplug #############
#################################

export SPACESHIP_DOCKER_SHOW=false
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme

export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
zplug lukechilds/zsh-nvm

zplug rvm/rvm
export rvm_path=`zplug info rvm/rvm | sed -r "s/[[:cntrl:]]\[[0-9]{1,3}m//g" | grep dir | sed -r 's/- dir: |"//g'`
source $rvm_path/scripts/rvm

export AUTOENV_FILE_ENTER=.env
zplug Tarrasch/zsh-autoenv, defer:2

zplug zsh-users/zsh-syntax-highlighting, defer:2

zplug zsh-users/zsh-history-substring-search, defer:2
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

zplug plugins/tmuxinator, from:oh-my-zsh, defer:2

zplug tfutils/tfenv, as:command, use:"bin/*"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load #--verbose

export PATH=$ZPLUG_BIN:$PATH

export FPATH=$FPATH:$HOME/.local/share/zsh/site-functions
autoload -Uz compinit
compinit

#################################
########### Zplug end ###########
#################################