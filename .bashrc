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

# Source bash completions
for _file in /etc/profile.d/*.sh; do
  . "$_file"
done

complete -cf doas

# OpenBSD source aliases
alias reposync='doas -u cvs reposync rsync://anoncvs.fr.openbsd.org/openbsd-cvs/ /home/cvs'
alias cvsup='cvs -d /home/cvs -q up -Pd -rOPENBSD_7_0'
