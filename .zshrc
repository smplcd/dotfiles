# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"

# aliases
source $XDG_CONFIG_HOME/sh_aliases

bindkey -v

# Basic auto/tab complete:
autoload -U compinit
compinit

# ricing
ufetch
export PS1=$'\e[0;31m[\e[0;33m%m \e[0;34m%1~\e[0;31m]\e[0;00m\$ '
