# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export XDG_CONFIG_HOME='$HOME/.config'
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"

# aliases
alias mkd="mkdir -p"
alias v="nvim"
alias dot='/usr/local/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
alias lat='la -T'
alias la='ll -a'
alias ll='ls -lF'
alias sadate='date +%j/%Y'

set -o vi

# ricing
ufetch
export PS1='\e[0;31m[\e[0;33m\h \e[0;34m\W\e[0;31m]\e[0;00m\$ '
