# check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

export XDG_CONFIG_HOME='$HOME/.config'

# Aliases
alias mkd="mkdir -pv"
alias v="nvim"
alias dot='/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME'
# some more ls aliases
alias lat='ls -T'
alias la='ls -a'
alias ls='exa -l'

# if on WSL2
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

export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
