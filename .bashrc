# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"

# aliases
source $XDG_CONFIG_HOME/sh_aliases

set -o vi

# ricing
ufetch
# export PS1='[\h \W]\$ ' /* without color for clarity */
export PS1='\[\e[31m\][\[\e[33m\]\h \[\e[34m\]\W\[\e[31m\]]\[\e[m\]\$ '
