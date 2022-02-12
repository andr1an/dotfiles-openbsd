# .xsession
# vim: ft=bash

export TERMINAL=urxvtc

# Setting locale for X.Org
export LC_ALL=en_US.UTF-8

# Cursors
export XCURSOR_PATH="${XCURSOR_PATH}:${HOME}/.local/share/icons"

[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

# SSH agent
if [[ ! -S "${HOME}/.ssh/agent.sock" ]]; then
  if [[ -z "${SSH_AUTH_SOCK:-}" ]]; then
    export SSH_AUTH_SOCK="${HOME}/.ssh/agent.sock"
    eval "$(ssh-agent -a "$SSH_AUTH_SOCK")"
  fi
elif [[ -z "${SSH_AUTH_SOCK:-}" ]]; then
  export SSH_AUTH_SOCK="${HOME}/.ssh/agent.sock"
fi

urxvtd -q -f -o

exec i3
