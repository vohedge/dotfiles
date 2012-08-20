#!/bin/sh
cd $(dirname $0)
for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ] && [ ! `echo $dotfile | grep '\.zshrc\..*'` ]
    then
        ln -Fis "$PWD/$dotfile" $HOME
    fi
done
