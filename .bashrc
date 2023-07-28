# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export XDG_CONFIG_HOME='$HOME/.config'
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="nvim"

# Aliases
alias mkd="mkdir -pv"
alias nvim="nvim -u ${XDG_CONFIG_HOME}/nvim/init.lua"
alias v="nvim"
alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
alias lat='la -T'
alias la='ll -a'
alias ll='ls -lF'
alias sadate='date +%j/%Y'

# Machine-specific
if [ -d "/mnt/c/Windows" ]
then
        export WHOME="/mnt/c/Users/gamxr/"
fi

#vi mode
set -o vi

# https://code.mendhak.com/simple-bash-prompt-for-developers-ps1-git/
function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/ (\1$(parse_git_dirty))/"
}

export PS1='\e[0;31m[\e[0;34m\u@\h \e[0;32m\w\e[0;00m\e[0;31m]\e[0;33m`parse_git_branch`\e[0;00m \$ '

