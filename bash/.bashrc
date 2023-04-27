#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias l='ls -la --color=auto'
alias ll='ls -la --color=auto'
alias bat='cat /sys/class/power_supply/BAT0/capacity'
