#!/bin/bash

test -d $HOME/.config/mc/ || mkdir -p $HOME/.config/mc/
cp -Rf .config/mc $HOME/.config/
