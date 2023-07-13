## smplcd's dots

Below are the commands to install the dots in another environment
```sh
git clone --bare git@github.com:smplcd/dotfiles.git $HOME/.dot/
alias dot="/usr/bin/git --git-dir=$HOME/.dot/ --work-tree=$HOME"
dot config status.showUntrackedFiles no
dot restore --staged .
source "$HOME/.bashrc"
```
