#!/bin/bash

rm -Rf ~/.adobe/Flash_Player ~/.macromedia/Flash_Player
if [ -d "$HOME/.adobe" ];then
  if [ -z "`ls $HOME/.adobe`" ];then
    rmdir $HOME/.adobe
  fi
fi

if [ -d "$HOME/.macromedia" ];then
  if [ -z "`ls $HOME/.macromedia`" ];then
    rmdir $HOME/.macromedia
  fi
fi
