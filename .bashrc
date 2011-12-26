# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias ls='ls --color'
alias l='ls --color'
alias ll='ls --color -al'
alias sudo='sudo -E'
alias s='screen'
alias hosts='sudo vim /etc/hosts'

# For Screen
if [[ ${TERM} =~ ^screen.* ]]; then
	export PROMPT_COMMAND='echo -ne "\033k${USER}@${HOSTNAME%%.*}\033\\"'
fi

# For extend config for cygwin
if [ -f ~/.bashrc_cygwin ]; then
	source ~/.bashrc_cygwin
fi
