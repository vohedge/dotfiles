#!/bin/sh

##
# Synbolic links for dotfiles
echo " * Make synbolic links for dotfiles"

current_dir=`dirname $0`
cd ${current_dir}

function init_dotfile() {
  local dest_file=$1
  local src_file=$2

  if [ -L ${dest_file} ];then
    echo "   ${dest_file} skip..."
  else
    if [ -e ${dest_file} ]; then
      rm -rf ${dest_file}
    fi
    echo "   Making ${dest_file} symbolic link..."
    ln -Fis ${src_file} ${dest_file}
  fi
}

##
# VIM

if [ ! -e "${HOME}/.vim/bundle" ]; then
  mkdir "${HOME}/.vim/bundle"
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

init_dotfile "${HOME}/.vimrc"  "${PWD}/vim/.vimrc"
init_dotfile "${HOME}/.gvimrc" "${PWD}/vim/.gvimrc"

##
# BASH
init_dotfile "${HOME}/.bashrc" "${PWD}/bash/.bashrc"

##
# TMUX
init_dotfile "${HOME}/.tmux.conf" "${PWD}/tmux/.tmux.conf"

##
# GIT
# init_dotfile "${HOME}/.gitconfig" "${PWD}/git/.gitconfig"

##
# TIG
init_dotfile "${HOME}/.tigrc" "${PWD}/tig/.tigrc"

