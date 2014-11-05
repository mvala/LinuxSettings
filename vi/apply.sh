#!/bin/bash

#cp -rf .vim ~/
cp .vimrc ~/
cp -r .vim ~/

git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
