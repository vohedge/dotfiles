#!/bin/sh

##
# Ansible for self build
#
# yum install -y epel-release
# sed -i "s/enabled=1/enabled=0/g" /etc/yum.repos.d/epel.repo
# yum install -y ansible --enablerepo=epel
ansible-playbook "${PWD}/ansible-playbook/dev-machine.yml" --connection=local

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
# ZSH

# oh_my_zsh_path="${HOME}/.oh-my-zsh"
# if [ ! -e ${oh_my_zsh_path} ]; then
#   git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# else
#   echo " * Oh-My-Zsh is already installed"
# fi

# init_dotfile "${oh_my_zsh_path}/custom" "${PWD}/zsh/oh-my-zsh-custom"
# init_dotfile "${HOME}/.zshrc" "${PWD}/zsh/.zshrc"

##
# BASH
init_dotfile "${HOME}/.bashrc" "${PWD}/bash/.bashrc"

##
# TMUX
init_dotfile "${HOME}/.tmux.conf" "${PWD}/tmux/.tmux.conf"

##
# GIT
init_dotfile "${HOME}/.gitconfig" "${PWD}/git/.gitconfig"

##
# TIG
init_dotfile "${HOME}/.tigrc" "${PWD}/tig/.tigrc"

