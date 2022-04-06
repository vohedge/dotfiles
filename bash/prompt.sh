### Prompt Colors
# Modified version of @gf3’s Sexy Bash Prompt
# (https://github.com/gf3/dotfiles)

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
	export TERM=gnome-256color
elif infocmp xterm-256color >/dev/null 2>&1; then
	export TERM=xterm-256color
fi

if tput setaf 1 &> /dev/null; then
	tput sgr0
	if [[ $(tput colors) -ge 256 ]] 2>/dev/null; then
    CYAN=$(tput setaf 6)
		MAGENTA=$(tput setaf 9)
		ORANGE=$(tput setaf 172)
		GREEN=$(tput setaf 190)
		PURPLE=$(tput setaf 141)
	else
    CYAN=$(tput setaf 6)
		MAGENTA=$(tput setaf 5)
		ORANGE=$(tput setaf 4)
		GREEN=$(tput setaf 2)
		PURPLE=$(tput setaf 1)
	fi
	BOLD=$(tput bold)
	RESET=$(tput sgr0)
else
  CYAN="\033[1;36m"
	MAGENTA="\033[1;31m"
	ORANGE="\033[1;33m"
	GREEN="\033[1;32m"
	PURPLE="\033[1;35m"
	BOLD=""
	RESET="\033[m"
fi

export CYAN
export MAGENTA
export ORANGE
export GREEN
export PURPLE
export BOLD
export RESET

export KUBE_PS1_SEPARATOR=""

# Git dirty
function parse_git_dirty() {
	[[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}

# Git branch
function parse_git_branch() {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

# Python venv
function venv_name() {
  if [ -n "${VIRTUAL_ENV}" ]; then
    project_name=$(basename $(dirname ${VIRTUAL_ENV}))
    echo "[venv:${MAGENTA}${project_name}${RESET}] "
  fi
}

symbol=":) "

# Prompt with kube-ps1
if [ "${KUBE_PS1_BINARY}" = "kubectl" ]; then
  export PS1="\n\[$CYAN\]\u \[$RESET\]in \[$GREEN\]\w\[$RESET\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$GREEN\]\$(parse_git_branch)\[$RESET\] \$(kube_ps1)\n$symbol\[$RESET\]"
  export PS2="\[$ORANGE\]→ \[$RESET\]"

# Prompt with no kube-ps1
else
  export PS1="\n\[${CYAN}\]\u \[$RESET\]in \[$GREEN\]\w\[$RESET\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$GREEN\]\$(parse_git_branch)\[$RESET\]\n\$(venv_name)$symbol\[$RESET\]"
fi
