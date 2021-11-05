export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR="vim"
export VISUAL="vim"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTCONTROL=ignoreboth:erasedups

######################################
# PATH

path_add() { for p in $*; do [[ -d "$p" && ! ":$PATH:" == *":$p:"* ]] && PATH="$PATH:$p"; done }

path_add $HOME/bin
export PATH=${PATH}
