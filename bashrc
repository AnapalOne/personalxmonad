#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#set $PATH
export PATH=$PATH:/usr/local/bin

# Defaults
export VISUAL="subl"

alias reboot='systemctl reboot'
alias shutdown='systemctl poweroff'

#alias ls='nnn -de'
#alias nnn='nnn -de'
#alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
#alias ls='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias ls='ranger'
#alias spt='~/Scripts/spt-spotifyd'
