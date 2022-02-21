#!/bin/bash

function lineinfile() {
  local line="${1}"
  local file="${2}"
  echo "- ${1}"
  grep -qF -- "${line}" "${file}" || echo "${line}" | sudo tee -a  "${file}"
  return $?
}

# Make sure .bash_profile exists
PROFILE="${HOME}/.profile"
if [ -f ${PROFILE} ] ;then
  echo '.bash_profile has already existed.'
else
  touch $PROFILE
fi

##
# Lines put in .bash_profile
echo "Write lines to .bash_profile"

# HomeBrew
lineinfile "eval \"\$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)\"" $PROFILE

# Command path installed with HomeBrew
lineinfile "export PATH=/home/linuxbrew/.linuxbrew/bin:\$PATH" $PROFILE

# kube-ps1
# if [ -e "${HOME}/.kube" ] ;then
#   lineinfile "source \"/home/linuxbrew/.linuxbrew/kube-ps1/share/kube-ps1.sh\"" $PROFILE
# fi

# Pyenv
if [ -e "${HOME}/.pyenv" ] ;then
  lineinfile "export PYENV_ROOT=\"\$HOME/.pyenv\"" $PROFILE
  lineinfile "export PATH=\"\$PYENV_ROOT/bin:\$PATH\"" $PROFILE
  lineinfile "eval \"\$(pyenv init --path)\"" $PROFILE
  lineinfile "eval \"\$(pyenv init -)\"" $PROFILE
fi

# Reload!
source ${PROFILE}
