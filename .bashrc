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

# Show Git Branch and Status
show_git_status ()
{
	c_cyan=`tput setaf 6`
	c_red=`tput setaf 1`
	c_green=`tput setaf 2`
	c_sgr0=`tput sgr0`

	git_status=""
	if git rev-parse --git-dir >/dev/null 2>&1
	then
		branch_name=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
		repo_name=$(git rev-parse --show-toplevel)
		repo_name=${repo_name##*/}
		color=""
		if git diff --quiet 2>/dev/null >&2 
		then
			color=${c_green}
		else
			color=${c_red}
		fi
		git_status="\nGit>${repo_name}::${color}${branch_name}${c_sgr0} "
	else
		return 0
	fi
	echo -ne $git_status
}
PS1='[\u@\h \w]$(show_git_status)\$ '

# For extend config for cygwin
if [ -f ~/.bashrc_cygwin ]; then
	source ~/.bashrc_cygwin
fi
