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
if [ ! -e "${HOME}/.oh-my-zsh" ]; then
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  rm -rf "${HOME}/.oh-my-zsh/custom"
  ln -Fis "${HOME}/.dotfiles/oh-my-zsh-custom" "${HOME}/.oh-my-zsh/custom"
else
  echo " * Oh-My-Zsh is already installed"
fi

