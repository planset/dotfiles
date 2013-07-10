#!/bin/bash

DOT_FILES=( .zshrc .gitconfig .gitignore .screenrc .screenrc.dev .screen.defaultlayout .tmux.conf .pythonstartup .pythonrc.py)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done

mkdir -p ~/.zsh


