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

# PROMPT
if [ -f ~/.dotfiles/.zshrc.prompt ]; then
    source ~/.dotfiles/.zshrc.prompt
fi

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
# Term title
# case "${TERM}" in
# kterm*|xterm)
#     precmd() {
#         echo -ne "\033]0;${USER}@${HOST%%.*}:${PWD}\007"
#     }
#     ;;
# esac

##
# For each devices
case "${OSTYPE}" in
	# Mac
	darwin*)
	export PATH=/opt/local/bin:/opt/local/sbin/:$PATH # path for MacPorts
	alias ls="ls -G -w"
	alias hosts="sudo vim /private/etc/hosts"
	;;
esac
