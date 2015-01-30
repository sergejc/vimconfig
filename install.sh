#!/bin/bash

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir ~/.fonts && cd ~/.fonts/ && git clone https://github.com/scotu/ubuntu-mono-powerline.git && cd ~


if [[ ! -e ~/.vim/swap ]]; then
    mkdir ~/.vim/swap 
fi

if [[ ! -e ~/.vim/backup ]]; then
    mkdir ~/.vim/backup
fi
