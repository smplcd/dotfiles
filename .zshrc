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
autoload -U colors && colors
export PS1="%{$fg[red]%}[%{$fg[yellow]%}%m %{$fg[blue]%}%1~%{$fg[red]%}]%{$reset_color%}\$ "
