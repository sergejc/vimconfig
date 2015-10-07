#!/bin/bash

git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

if [[ ! -e $HOME/.vim/swap ]]; then
    mkdir $HOME/.vim/swap
fi

if [[ ! -e $HOME/.vim/backup ]]; then
    mkdir $HOME/.vim/backup
fi
