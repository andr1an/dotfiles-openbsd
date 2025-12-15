# ~/.kshrc

export CLICOLOR=1

alias ls='colorls'

PS1="\033[32m\u@\h\033[0m \w $ "

export HISTFILE=~/.ksh_history
export HISTSIZE=10000

alias ll='ls -l'
alias la='ls -lA'

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias gdrive-bisync='rclone bisync -v gdrive: ~/google-drive'
