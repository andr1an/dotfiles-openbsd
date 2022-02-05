# ~/.bash_profile

export PATH=$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games

# Crutch for colored output in the console
#if [[ $TERM = vt220 ]]; then
#  TERM=wsvt25
#fi

if [[ -f $HOME/.bashrc ]]; then
  . $HOME/.bashrc
fi
