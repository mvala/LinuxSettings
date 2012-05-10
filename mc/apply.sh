#!/bin/bash

test -d $HOME/.config/mc/ || mkdir -p $HOME/.config/mc/
cp -Rf .config/mc $HOME/.config/
test -d $HOME/.config/mc/ || mkdir -p $HOME/.local/share/mc/
cp -Rf .local/share/mc $HOME/.local/share/mc/