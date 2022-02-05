# ~/.bashrc

# Setting locale for console
export LC_ALL=en_US.UTF-8

# green colored prompt
PS1='[\[\033[01;32m\]\u@\h \[\033[01;34m\]\w\[\033[00m\]]\$ '

export HISTCONTROL=ignoreboth

export CLICOLOR=1
alias ls='colorls'
alias diff='colordiff'

alias ll='ls -l'
alias la='ls -lA'

for _file in /etc/profile.d/*.sh; do
  . "$_file"
done

complete -cf doas
