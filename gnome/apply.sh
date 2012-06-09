#!/bin/bash

# icons in menu
dbus-launch gsettings set org.gnome.desktop.interface buttons-have-icons true
dbus-launch gsettings set org.gnome.desktop.interface menus-have-icons true

# calendar
dbus-launch gsettings set org.gnome.shell.calendar show-weekdate true
dbus-launch gsettings set org.gnome.shell.clock show-date true

# gnome tweaking
gconftool-2 --type bool --set /apps/gnome-terminal/global/use_menu_accelerators false # disable F10

# visual bell
dbus-launch gsettings set org.gnome.desktop.wm.preferences visual-bell true
dbus-launch gsettings set org.gnome.desktop.wm.preferences visual-bell-type 'frame-flash'
dbus-launch gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'evolution.desktop', 'fedora-empathy.desktop', 'rhythmbox.desktop', 'shotwell.desktop', 'libreoffice-writer.desktop', 'nautilus.desktop', 'gnome-documents.desktop', 'gnome-terminal.desktop']"

# add guake to autostart
test -d ~/.config/autostart || mkdir -p ~/.config/autostart
if [ -f /usr/share/applications/guake.desktop ];then
  cp /usr/share/applications/guake.desktop ~/.config/autostart
fi

# to solve F10 bug in gnome
cp -rf .config/ ~/
