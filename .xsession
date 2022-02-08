# .xsession

export TERMINAL=urxvtc

# Setting locale for X.Org
export LC_ALL=en_US.UTF-8

[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

# SSH agent
export SSH_AUTH_SOCK="${HOME}/.ssh/agent.sock"
[[ -S "$SSH_AUTH_SOCK" ]] || eval "$(ssh-agent -a "$SSH_AUTH_SOCK")"

urxvtd -q -f -o

exec i3
