export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR="vim"
export VISUAL="vim"
export GOPATH="$HOME/golang"
[[ $(uname) == Darwin ]] && export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin"
[[ $(uname) == Linux ]] && export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

export MACHINEID=$(cat ~/.machineid)

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/local/bin"
[[ "$MACHINEID" == macbook-work ]] && export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="$PATH:${GOPATH//://bin:}/bin"

[[ "$MACHINEID" == laptop-priv ]] && export GOROOT="/opt/go"

[[ "$MACHINEID" == macbook-work ]] && CDPATH=".:$HOME/src:$HOME/golang/src"
[[ "$MACHINEID" == laptop-priv ]] && CDPATH=".:$HOME/src:$HOME/golang/src"

[[ "$MACHINEID" == macbook-work ]] && export PATH="$PATH:$HOME/android-sdk-macosx/platform-tools"

if [[ $(uname) == Darwin ]]; then
	export CLICOLOR=1
	export LSCOLORS=GxFxCxDxBxegedabagaced
	export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/"
	export JAVA_VERSION=1.7
fi

export LUA_CPATH="$HOME/lualib/?.so;;"
export LUA_PATH="$HOME/lualib/?.lua;;"
