# vim: ts=4 sw=4 sts=4 et ai
# Add prompt
function() {
    local TIMER
    local ELAPSED
    local function __format_seconds() {
        local seconds=$1
        local minutes=$(( $seconds / 60 ))
        local hours=$(( $minutes / 60 ))
        seconds=$(( $seconds % 60 ))
        minutes=$(( $minutes % 60 ))
        if [[ $hours -gt 0 ]]; then
            echo -n "${hours}h"
        fi
        if [[ $minutes -gt 0 ]]; then
            echo -n "${minutes}m"
        fi
        echo "${seconds}s"
    }
    local function __start_timer() {
        TIMER=${SECONDS}
    }
    local function __stop_timer() {
        ELAPSED=$(( ${SECONDS} - ${TIMER:-0} ))
        unset TIMER
    }
    local function __format_git() {
        if git rev-parse --is-inside-work-tree >/dev/null 2>/dev/null ; then
            echo "($(git rev-parse --abbrev-ref HEAD 2>/dev/null)) "
        fi
    }

    local __prompt_fn() {
        # preexec does not seem to be called so this doesn't work
        #local TIME="$(__format_seconds ${ELAPSED})"
        PROMPT="%F{green}%n%f@%m %F{blue}%~%f %(?..%F{red}!%?%f )$(__format_git)${TIME}
${VIRTUAL_ENV_PROMPT}%# "
    }

    precmd_functions+=(__stop_timer __prompt_fn)
    preexec_functions+=(__start_timer )
}

[[ -d /opt/homebrew ]] && eval "$(/opt/homebrew/bin/brew shellenv)"
[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env
export PATH="$HOME/bin:$PATH"

setopt rmstarsilent
setopt HIST_IGNORE_DUPS

set -o vi
bindkey '^R' history-incremental-search-backward
