# ~/.kshrc

set -o emacs

export CLICOLOR=1

alias ls='colorls'

PS1="\033[32m\u@\h\033[0m \w $ "

export HISTFILE=~/.ksh_history
export HISTSIZE=10000
export HISTCONTROL=ignorespace:ignoredups

export PAGER="less -R"
export LESS="-i"

alias ll='ls -l'
alias la='ls -lA'

alias pbcopy='xclip -selection clipboard -i'
alias pbpaste='xclip -selection clipboard -o'

alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias gdrive-bisync='rclone bisync -v gdrive: ~/google-drive'
