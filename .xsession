# .xsession
# vim: ft=bash

export TERMINAL=urxvtc

# Setting locale for X.Org
export LC_ALL=en_US.UTF-8

# Cursors
export XCURSOR_PATH="${XCURSOR_PATH}:${HOME}/.local/share/icons"

[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

# SSH agent
[[ -z "$SSH_AUTH_SOCK" ]] && export SSH_AUTH_SOCK="${HOME}/.ssh/agent.sock"
[[ -S "$SSH_AUTH_SOCK" ]] || eval "$(ssh-agent -a "$SSH_AUTH_SOCK")"

urxvtd -q -f -o

exec i3
