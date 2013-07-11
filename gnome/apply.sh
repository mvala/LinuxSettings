#!/bin/bash

gsettings set org.gnome.shell.overrides dynamic-workspaces false
gsettings set org.gnome.desktop.wm.preferences num-workspaces 4

# gnome tweaking
gconftool-2 --type bool --set /apps/gnome-terminal/global/use_menu_accelerators false # disable F10

# visual bell
gsettings set org.gnome.desktop.wm.preferences visual-bell true
gsettings set org.gnome.desktop.wm.preferences visual-bell-type 'frame-flash'

#gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'evolution.desktop', 'fedora-empathy.desktop', 'skype.desktop']"

# Laptop lid action
#gsettings set org.gnome.settings-daemon.plugins.power lid-close-battery-action blank
#gsettings set org.gnome.settings-daemon.plugins.power lid-close-ac-action blank

# to solve F10 bug in gnome
cp -rf .config/ ~/
