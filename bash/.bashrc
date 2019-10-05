# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


##
# Alias

# Quick navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# User specific aliases and functions
alias ls='ls --color'
alias l='ls --color'
alias ll='ls --color -al'
alias sudo='sudo -E'
alias s='screen'
alias hosts='sudo vim /etc/hosts'
alias ssh-config='cat ~/.ssh/config | grep Host'
alias sc='cat ~/.ssh/config | grep Host'

# Alias for Git
alias gcd='cd $(git rev-parse --show-toplevel)'
alias g='git'
alias gs='git status'
alias ga='git add .'
alias gc='git checkout'
alias gcm='git commit'
alias gd='git diff'
# git branch はfzfで代用する
#alias gb='git branch'
alias gl='git log --graph --decorate --pretty=format:"%ad [%cn] <c:%h t:%t p:%p> %n %Cgreen%d%Creset %s %n" --stat -p'
alias gls='git log --stat --summary'

# Docker-compose
alias dc='docker-compose'


##
# PATH and commands

# For extend config for cygwin
if [ -f ~/.bashrc_cygwin ]; then
	source ~/.bashrc_cygwin
fi

# Show ssh hosts

# Nodejs nodenv
if [ -e ~/.nodenv ]; then
  export PATH="$HOME/.nodenv/bin:$PATH"
  eval "$(nodenv init -)"
fi

# Python pyenv
if [ -e ~/.pyenv ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
  fi
fi

# For commands installed by pip
if [ -e ~/.local/bin ]; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# Docker for windows in WSL
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
  export DOCKER_HOST=tcp://localhost:2375
fi

# Kubectl completion
if type kubectl > /dev/null 2>&1; then
  source <(kubectl completion bash)
fi

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
if [ -f ~/.fzf/shell/completion.bash ]; then
  source "$HOME/.fzf/shell/completion.bash"
  source "$HOME/.fzf/shell/key-bindings.bash"
fi

##
# Functions

# Git branch
git_branch() {
  local branches branch
  branches=$(git branch --all | grep -v HEAD) &&
  branch=$(echo "$branches" |
           fzf-tmux -d $(( 2 + $(wc -l <<< "$branches") )) +m) &&
  git checkout $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
alias gb='git_branch'

# SSH
# https://qiita.com/kamykn/items/9a831862038efa4e9f8f
fssh() {
  local sshLoginHost
  sshLoginHost=`cat ~/.ssh/config | grep -i ^host | awk '{print $2}' | fzf`

  if [ "$sshLoginHost" = "" ]; then
      # ex) Ctrl-C.
      return 1
  fi

  ssh ${sshLoginHost}
}
alias fssh='fssh'



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

# Git branch details
function parse_git_dirty() {
	[[ $(git status 2> /dev/null | tail -n1) != *"working directory clean"* ]] && echo "*"
}
function parse_git_branch() {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1$(parse_git_dirty)/"
}

symbol=":) "

export PS1="\n\[${CYAN}\]\u \[$RESET\]in \[$GREEN\]\w\[$RESET\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" on \")\[$PURPLE\]\$(parse_git_branch)\[$RESET\]\n$symbol\[$RESET\]"
export PS2="\[$ORANGE\]→ \[$RESET\]"
