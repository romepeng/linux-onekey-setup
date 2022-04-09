# Path to oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
plugins=(git)

# initialize oh-my-zsh
source $ZSH/oh-my-zsh.sh

# use en_US.UTF-8 encoding
export LANG=en_US.UTF-8


# load workspace configure
export ZSH_WORKSPACE_RC="$HOME/.workspacerc"
if [[ -f $ZSH_WORKSPACE_RC ]]; then
  source $ZSH_WORKSPACE_RC
fi
