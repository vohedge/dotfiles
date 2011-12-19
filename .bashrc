# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias sudo='sudo -E'
alias s='screen'
alias hosts='sudo vim /etc/hosts'

# For extend config for cygwin
if [ -f ~/.bashrc_cygwin ]; then
	source ~/.bashrc_cygwin
fi
