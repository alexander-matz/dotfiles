########################################
# Options

unsetopt beep
unsetopt hist_beep
unsetopt list_beep
unsetopt ignore_eof
setopt rm_star_silent
setopt correct
setopt nullglob
unsetopt list_ambiguous
setopt auto_remove_slash
unsetopt glob_dots
setopt chase_links
setopt hist_verify
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_to_home

export KEYTIMEOUT=1
export HISTORY=2000
export SAVEHIST=5000
export HISTFILE=$HOME/.history
setopt inc_append_history
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_find_no_dups
unsetopt share_history

########################################
# Completion

setopt autolist
unsetopt menucomplete

########################################
# Key Bindings

bindkey -v
export KEYTIMEOUT=1
bindkey -v '^?' backward-delete-char
bindkey -v '^R' history-incremental-pattern-search-backward

########################################
# Prompt

autoload -U colors && colors

prompt() {
	local ret="%(?..%F{red}%?%f)"
	local userhost="%U%F{green}%n%f%u@%m"
	local dir="%U%F{blue}%~%f%u"

	echo "${userhost}: ${dir} $ret\n\$ "
}

setopt PROMPT_SUBST
PROMPT='$(prompt)'
