#!/bin/bash

##
# Use Bash
if [ $SHELL != "/bin/bash" ]; then
  echo 'Change current shell to bash'
  chsh -s /bin/bash
fi

##
# Make sure .bash_profile exists
BASHPROFILE="${HOME}/.bash_profile"
if [ -f ${BASHPROFILE} ] ;then
  echo '.bash_profile has already existed.'
else
  touch $BASHPROFILE
fi

##
# Lines put in .bash_profile
echo "Write lines to .bash_profile"

function lineinfile() {
  local line="${1}"
  local file="${2}"
  echo "- ${1}"
  grep -qF -- "${line}" "${file}" || echo "${line}" >> "${file}"
  return $?
}

# .bashrc
lineinfile "source \$HOME/.bashrc" $BASHPROFILE

# avoid to show warning to use zsh
lineinfile "export BASH_SILENCE_DEPRECATION_WARNING=1" $BASHPROFILE

# HomeBrew
lineinfile "eval \"\$(/opt/homebrew/bin/brew shellenv)\"" $BASHPROFILE

# Command path installed with HomeBrew
lineinfile "export PATH=/opt/homebrew/bin:\$PATH" $BASHPROFILE

# kube-ps1
if [ -e "${HOME}/.kube" ] ;then
  lineinfile "source \"/opt/homebrew/opt/kube-ps1/share/kube-ps1.sh\"" $BASHPROFILE
fi

# Reload!
source ${BASHPROFILE}
