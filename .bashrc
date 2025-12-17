# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias hydrus='flatpak run io.github.hydrusnetwork.hydrus'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

PS1='[\u@\h \W]\$ '
