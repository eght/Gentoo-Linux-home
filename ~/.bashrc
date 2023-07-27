# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
HISTFILESIZE=9999
HISTSIZE=9999
HISTFILE=~/.bash_history

# settings
# 2023-06-27Tue
alias lc='ls -CF'
alias l='ls'
alias m='ls'
alias a='ls'
alias d='date'

####
# settings
# 2023-06-28Wed
if [ -f ~/.Xmodmap ]; then xmodmap ~/.Xmodmap; fi
