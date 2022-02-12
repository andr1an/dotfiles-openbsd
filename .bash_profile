# ~/.bash_profile

export PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games

# Crutch for colored output in the console
#if [[ $TERM = vt220 ]]; then
#  TERM=wsvt25
#fi

# SSH agent
[[ -z "$SSH_AUTH_SOCK" ]] && export SSH_AUTH_SOCK="${HOME}/.ssh/agent.sock"
[[ -S "$SSH_AUTH_SOCK" ]] || eval "$(ssh-agent -a "$SSH_AUTH_SOCK")"

if [[ -f $HOME/.bashrc ]]; then
  . $HOME/.bashrc
fi
