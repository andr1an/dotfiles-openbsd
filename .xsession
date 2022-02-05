# .xsession

export TERMINAL=urxvtc

# Setting locale for X.Org
export LC_ALL=en_US.UTF-8

[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

if [[ -z "$SSH_AUTH_SOCK" ]]; then
  eval $(ssh-agent)
fi

urxvtd -q -f -o

exec i3
