# PURE PROMPT

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

export PATH="$HOME/bin:$PATH"

[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env
