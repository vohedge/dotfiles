#!/bin/sh
echo " * Make synbolic links for dotfiles"

current_dir=`dirname $0`
cd ${current_dir}

for dotfile in .?*; do
  if [ ${dotfile} != '..' ] && [ ${dotfile} != '.git' ] \
    && [ ! `echo ${dotfile} | grep '\.zshrc\..*'` ] \
    && [ ! `echo ${dotfile} | grep '\.swp'` ]; then
    if [ ! -L "${HOME}/${dotfile}" ]; then
      echo "   Making ${dotfile} symbolic link"
      ln -Fis "${PWD}/${dotfile}" ${HOME}
    else
      echo "   ${dotfile} symbolic link was already exists."
    fi
  fi
done

echo " * Install Oh-My-Zsh"
oh_my_zsh_path="${HOME}/.oh-my-zsh"
if [ ! -e ${oh_my_zsh_path} ]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
else
  echo " * Oh-My-Zsh is already installed"
fi

if [ ! -L "${oh_my_zsh_path}/custom" ]; then
  if [ -d "${oh_my_zsh_path}/custom" ]; then
    rm -rf "${oh_my_zsh_path}/custom"
  fi
  echo " * making symbolic link to Oh-My-Zsh custom directory"
  ln -Fis "${HOME}/.dotfiles/oh-my-zsh-custom" "${oh_my_zsh_path}/custom"
fi

