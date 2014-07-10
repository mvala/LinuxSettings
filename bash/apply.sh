#!/bin/bash
cp /etc/skel/.bash* ~/
cp -f .bashrc ~/
[ -d ~/.config ] || mkdir -p ~/.config
cp .config/.prompt.sh ~/.config/
