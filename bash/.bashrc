#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias l='ls -lah --color=auto'
alias ll='ls -lah --color=auto'
alias bat='cat /sys/class/power_supply/BAT0/capacity'
alias wgdn='nmcli connection down my-wg0'
alias wgup='nmcli connection up my-wg0'
eval "$(starship init bash)"
alias vim='nvim'
alias mountcz='sudo mount.cifs //192.168.1.242/cz /media/cz -o credentials=/.smbcreds,uid=1000,gid=1000'
alias mountmedia='sudo mount -t nfs 192.168.1.242:/mnt/pool1/Movies-TV /media/media' 
alias mountprinter='sudo mount.cifs //192.168.1.242/3d-printer /media/3d-print -o credentials=/.smbcreds,uid=1000,gid=1000'
