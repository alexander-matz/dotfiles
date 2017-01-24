########################################
# Aliases

[[ $(uname) == Linux ]] && alias ls='ls -hF'
[[ $(uname) == Darwin ]] && alias ls='ls -hGF'
alias grep='grep --color=auto'
alias ll='ls -lh'
alias la='ls -lah'
alias less='less --quiet'
alias df='df -h'
alias du='du -h'

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

zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}'
zstyle ':completion:*' max-errors 3 numeric
zstyle ':completion:*' use-compctl false
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no result for : %d%b'
zstyle ':completion:*' menu no
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'

autoload -U compinit
compinit

########################################
# Key Bindings

bindkey -e # emacs mode
export KEYTIMEOUT=1

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
if [[ $(uname) == Darwin ]]; then
	bindkey "\e\e[D" backward-word # alt + <-
	bindkey "\e\e[C" forward-word # alt + ->
	bindkey '^[[1~' beginning-of-line # pos1
	bindkey '^[[4~' end-of-line # end
	# bindkey '^[[5~' # screen up
	# bindkey '^[[6~' # screen down
	bindkey '^[[3~' delete-char
fi

# ctrl-z toggle

ctrlz() {
	if [[ $#BUFFER -eq 0 ]]; then
		fg
		zle redisplay
	else
		zle push-input
	fi
}
zle -N ctrlz
bindkey '^Z' ctrlz

########################################
# Plugins etc.


########################################
# Prompt

autoload -U promptinit && promptinit
autoload -U colors && colors


PROMPT="[%U%F{green}%n%f@%m %F{blue}%c%f%u]%(?..%F{red}!%?%f)%# "
