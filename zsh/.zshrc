# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export EDITOR=nvim

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
which colorls >/dev/null && alias ls=colorls

export ZPLUG_HOME=$HOME/src/dotfiles/vendors/zplug
[ -f $ZPLUG_HOME/init.zsh ] && source $ZPLUG_HOME/init.zsh

test -f $HOME/.local.zshrc && source $HOME/.local.zshrc

#################################
############# Zplug #############
#################################

zplug romkatv/powerlevel10k, as:theme, depth:1

export NVM_DIR="$HOME/.nvm"
export NVM_LAZY_LOAD=true
zplug lukechilds/zsh-nvm, defer:2

export AUTOENV_FILE_ENTER=.env
zplug Tarrasch/zsh-autoenv, defer:2

zplug zsh-users/zsh-syntax-highlighting, defer:2

zplug zsh-users/zsh-history-substring-search, defer:2
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

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

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path=".nvmrc"

  if [ -f "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

cd .
