#!/bin/bash

function lineinfile() {
  local line="${1}"
  local file="${2}"
  echo "- ${1}"
  grep -qF -- "${line}" "${file}" || echo "${line}" | sudo tee -a  "${file}"
  return $?
}

##
# Make sure .profile exists
PROFILE="${HOME}/.profile"
if [ -f ${PROFILE} ] ;then
  echo '.profile has already existed.'
else
  touch $PROFILE
fi

##
# HomeBrew
# 
# This command is taken from the following URL.
# https://docs.brew.sh/Homebrew-on-Linux
# 
# Notice:
# Put `eval "$($(brew --prefix)/bin/brew shellenv)"` before `source .bashrc` in .profile
# Otherwise, the commands installed by homebrew will not be found.
# 
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
test -r ~/.bash_profile && echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.profile

##
# Pyenv

# MacOS
if [ "$(uname)" == "Darwin" ]; then
  if [ ! type -a pyenv ] ;then
    lineinfile "export PYENV_ROOT=\"\$HOME/.pyenv\"" $PROFILE
    lineinfile "export PATH=\"\$PYENV_ROOT/bin:\$PATH\"" $PROFILE
    lineinfile "eval \"\$(pyenv init --path)\"" $PROFILE
    lineinfile "eval \"\$(pyenv init -)\"" $PROFILE
  fi

# Ubuntu
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # Dependencies
  sudo apt-get update; sudo apt-get install make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev

  # This command is taken from the following URL.
  # https://github.com/pyenv/pyenv#basic-github-checkout
  # 
  # the sed invocation inserts the lines at the start of the file
  # after any initial comment lines
  sed -Ei -e '/^([^#]|$)/ {a \
  export PYENV_ROOT="$HOME/.pyenv"
  a \
  export PATH="$PYENV_ROOT/bin:$PATH"
  a \
  export PATH="$HOME/.local/bin:$PATH"
  a \
  ' -e ':a' -e '$!{n;ba};}' ~/.profile
  echo 'eval "$(pyenv init --path)"' >>~/.profile
  # echo 'eval "$(pyenv init -)"' >> ~/.bashrc
fi


##
# Nodenv
if [ ! type -a nodenv ] ;then
  lineinfile "eval \"$(nodenv init -)\"" $PROFILE
fi

##
# fzf
# 
# Install fzf completion
if [ type -a fzf ] ;then
  echo "Installing fzf completions..."
  $(brew --prefix)/opt/fzf/install
fi

##
# kube-ps1
# if [ -e "${HOME}/.kube" ] ;then
#   lineinfile "source \"/home/linuxbrew/.linuxbrew/kube-ps1/share/kube-ps1.sh\"" $PROFILE
# fi

##
# Reload!
source ${PROFILE}
