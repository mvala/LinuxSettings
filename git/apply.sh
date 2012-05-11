#!/bin/bash

test -d ~/.config || mkdir ~/.config

cp .gitconfig ~/
cp .git-prompt.sh ~/
cp .config/git-prompt.conf ~/.config/