if [[ -d $HOME/zsh/pure ]]; then
  fpath+=$HOME/.zsh/pure
  autoload -U promptinit; promptinit
  prompt pure
fi

export PATH="$HOME/bin:$PATH"

[[ -f $HOME/.cargo/env ]] && source $HOME/.cargo/env
