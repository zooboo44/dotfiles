#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ll='ls -la --color=auto'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage:'
