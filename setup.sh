#!/bin/sh
echo " * Make synbolic links for dotfiles"

current_dirr=`dirname $0`
cd ${current_dir}

for dotfile in .?*; do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ] \
		&& [ ! `echo $dotfile | grep '\.zshrc\..*'` ] \
		&& [ ! -L "${HOME}/${dotfile}" ]; then
        ln -Fis "$PWD/$dotfile" $HOME
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

