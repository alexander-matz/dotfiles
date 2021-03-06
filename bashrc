export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR="vim"
export VISUAL="vim"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export HISTCONTROL=ignoreboth:erasedups

[[ -f ~/bin/vcr.bash ]] && . ~/bin/vcr.bash

shopt -s autocd
set -o vi

#######################################
# ALIASES / FUNCTIONS

[[ "$(uname -s)" == "Linux" ]] && alias ls='ls --color=auto'
alias csi='csi -q'
abspath() { echo "$(cd "$(dirname "$1")" && pwd)/$(basename "$1")" ; }

######################################
# PATH

path_add() { for p in $*; do [[ -d "$p" && ! ":$PATH:" == *":$p:"* ]] && PATH="$PATH:$p"; done }

path_add $HOME/bin
path_add $HOME/local/{sbin,bin}
path_add /opt/local/{sbin,bin}
path_add /opt/pkg/{sbin,bin}
path_add /usr/local/{sbin,bin}
path_add /usr/{sbin,bin}
path_add /opt/X11/bin
path_add /{sbin,bin}
path_add /usr/games
path_add /usr/local/games
path_add /var/lib/snapd/snap/bin
export PATH=${PATH}

#######################################
# SOURCING STUFF

maybe_source() { if [ -e $1 ]; then . $1; fi }

maybe_source $HOME/local/Modules/3.2.10/init/bash
maybe_source $HOME/.config/z.sh

######################################
# TERMINAL

if [[ "$TERM" == xterm ]]; then
	export TERM=xterm-256color
fi

styles() {
	sclr="\[$(tput sgr0)\]"
	sgreen="\[$(tput setaf 2)\]"
	sblue="\[$(tput setaf 4)\]"
	sred="\[$(tput setaf 1)\]"
	sul="\[$(tput smul)\]"
}
tty -s && styles

prompt() {
	local EXIT=$?
	[[ $EXIT != 0 ]] && local retcode="${sred}${EXIT}${sclr}"
	local userhost="${sul}${sgreen}\u${sclr}@\h${sclr}"
	local dir="${sul}${sblue}\w${sclr}"

	export PS1="${userhost}: ${dir} ${retcode}\r\n\$ "
}

[ -t 1 ] && PROMPT_COMMAND=prompt

export MODULEPATH="$HOME/modules"
