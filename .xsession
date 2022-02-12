# .xsession
# vim: ft=bash

export TERMINAL=urxvtc

# Setting locale for X.Org
export LC_ALL=en_US.UTF-8

# Cursors
export XCURSOR_PATH="${XCURSOR_PATH}:${HOME}/.local/share/icons"

[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

# SSH agent
export SSH_AUTH_SOCK="${HOME}/.ssh/agent.sock"
[[ -S "$SSH_AUTH_SOCK" ]] || eval "$(ssh-agent -a "$SSH_AUTH_SOCK")"
if [[ ! -S "$SSH_AUTH_SOCK" ]] && [[ -z "$SSH_CONNECTION" ]]; then
  eval "$(ssh-agent -a "$SSH_AUTH_SOCK")"
fi

urxvtd -q -f -o

exec i3
