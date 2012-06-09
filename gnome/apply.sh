#!/bin/bash

# icons in menu
dbus-launch gsettings set org.gnome.desktop.interface buttons-have-icons true
dbus-launch gsettings set org.gnome.desktop.interface menus-have-icons true

# fonts
dbus-launch gsettings set org.gnome.desktop.interface font-name 'Cantarell 10' # Cantarell 11
dbus-launch gsettings set org.gnome.desktop.interface document-font-name 'Sans 10' # Sans 11
dbus-launch gsettings set org.gnome.desktop.interface monospace-font-name 'Monospace 9' # Monospace 11
dbus-launch gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Cantarell Bold 10' # Cantarell Bold 11

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
mkdir -p ~/.local/share/applications/
if [ -f /usr/share/applications/guake.desktop ];then
  cp /usr/share/applications/guake.desktop ~/.local/share/applications/
fi

# to solve F10 bug in gnome
cp -rf .config/ ~/
