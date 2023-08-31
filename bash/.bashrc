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
alias wgdn='nmcli connection down my-wg0'
alias wgup='nmcli connection up my-wg0'
eval "$(starship init bash)"
alias vim='nvim'
alias mountcz='sudo mount -t cifs -o credentials=/.smbcreds //192.168.1.242/cz /media/cz'
