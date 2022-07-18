#Startx Automatically


export NNN_PLUG='p:preview-tui;c:!convert $nnn png:- | xclip -sel clipboard -t image/png*'
export NNN_FIFO=/tmp/nnn.fifo
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state
export WGETRC=$XDG_CONFIG_HOME/wgetrc
export DOCKER_CONFIG=$XDG_CONFIG_HOME/docker

export GTK_RC_FILES="$XDG_CONFIG_HOME"/gtk-1.0/gtkrc
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export KDEHOME="$XDG_CONFIG_HOME"/kde
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv

export HISTFILE="$XDG_STATE_HOME"/bash/history
export PATH=$PATH:$HOME/.local/bin
export GOPATH="$XDG_DATA_HOME"/go


if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]]; then
 startx
 logout
 exit 0
fi

