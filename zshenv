export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR="vim"
export VISUAL="vim"

path_add() { for p in $@; do [[ -d "$p" ]] && PATH="$PATH:$p"; done }

PATH=""
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
export PATH=${PATH:1}

maybe_source() { if [ -e $1 ]; then . $1; fi }

maybe_source $HOME/local/Modules/3.2.10/init/zsh
maybe_source $HOME/.nix-profile/etc/profile.d/nix.sh
