#!/bin/bash

# add guake to autostart
test -d ~/.config/autostart || mkdir -p ~/.config/autostart
if [ -f /usr/share/applications/guake.desktop ];then
  cp /usr/share/applications/guake.desktop ~/.config/autostart
fi
