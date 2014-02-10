#################################################################################
#
# Main Zsh Configuration File
#
# 
# https://github.com/yonchu/dotfiles/blob/master/.zshrc
#
#################################################################################

# LANG
export LANG=ja_JP.UTF-8

# Custom Commands
export PATH=~/.dotfiles/bin:$PATH
export PATH=~/bin:$PATH

# z
# https://github.com/rupa/z
source ~/.dotfiles/z/z.sh

# Move between directories
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_to_home
setopt pushd_silent

# beepを鳴らさない
setopt no_beep

# beepを鳴らさない
setopt nolistbeep

# History
# HISTFILE=~/.zsh/.histfile
HISTSIZE=1000
SAVEHIST=1000

# KeyMap
bindkey -v

# Basic Settings
autoload -Uz compinit
compinit
setopt correct
setopt list_packed
setopt nolistbeep

##
# Alias and Functions
if [ -f ~/.dotfiles/.zshrc.aliases ]; then
    source ~/.dotfiles/.zshrc.aliases
fi

##
# Complement
# 
# a2
apache2_sites_available="/etc/apache2/sites-available/"
compdef "_files -W ${apache2_sites_available} -/" a2

##
# rbenv
if [ -d ~/.rbenv ]; then
	export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
	eval "$(rbenv init -)"
fi

##
# sheet
# http://oscardelben.com/sheet/
export EDITOR='vim'

# sheetの補完
#
compdef _sheets sheet
function _sheets {
	local -a cmds
	_files -W  ~/.dotfiles/.sheets/ -P '~/.dotfiles/.sheets/'

	cmds=('list' 'edit' 'copy')
	_describe -t commands "subcommand" cmds

	return 1;
}

##
# tmux
# https://github.com/jbleuzen/dotfiles/blob/master/tmux/tmux.zsh
# tmux shortcut for creating/attaching named sessions
tm() {
    [[ -z "$1" ]] && { echo "usage: tm <session>" >&2; return 1; }

    tmux has -t $1 
	if [ $? -eq "0" ] ;then
		if [ -z $TMUX ] ;then
			tmux attach -t $1
		else
			tmux switch -t $1
		fi
	else 
		if [ -z $TMUX ] ;then
			tmux new-session -s $1
			tmux attach -t $1
		else
			TMUX="" # To prevent message with 
			tmux new-session -s $1 -d
			tmux switch -t $1
		fi
	fi
}

# completion function
function __tmux-sessions() {
	local expl
	local -a sessions
	sessions=( ${${(f)"$(command tmux list-sessions)"}/:[ $'\t']##/:} )
	_describe -t sessions 'sessions' sessions "$@"
}
compdef __tmux-sessions tm

##
# For each devices
case "${OSTYPE}" in
	# Linux
	linux-gnu)
		export PATH=~/.local/bin:$PATH
		. ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
	;;
	# Mac
	darwin*)
		. ~/.dotfiles/.zshrc.mac
	;;
esac

if [ -n "$TMUX" ]; then
	alias pbcopy="reattach-to-user-namespace pbcopy"
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
