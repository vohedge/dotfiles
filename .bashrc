# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias sudo='sudo -E'
alias s='screen'
alias hosts='sudo vim /etc/hosts'
