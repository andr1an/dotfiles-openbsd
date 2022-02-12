# ~/.bash_profile

export PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games

# Crutch for colored output in the console
#if [[ $TERM = vt220 ]]; then
#  TERM=wsvt25
#fi

# SSH agent
if [[ ! -S "${HOME}/.ssh/agent.sock" ]]; then
  if [[ -z "${SSH_AUTH_SOCK:-}" ]]; then
    export SSH_AUTH_SOCK="${HOME}/.ssh/agent.sock"
    eval "$(ssh-agent -a "$SSH_AUTH_SOCK")"
  fi
elif [[ -z "${SSH_AUTH_SOCK:-}" ]]; then
  export SSH_AUTH_SOCK="${HOME}/.ssh/agent.sock"
fi

if [[ -f $HOME/.bashrc ]]; then
  . $HOME/.bashrc
fi
