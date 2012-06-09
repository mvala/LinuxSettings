#!/bin/bash

# local
rm -Rf ~/.local/ ~/.cache ~/.config

# X stuff
rm -Rf ~/.Xauthority ~/.xsession-errors* ~/.ICEauthority ~/.esd_auth

# pulse
rm -Rf ~/.pulse/ ~/.pulse-cookie

# adobe stuff
rm -Rf ~/.adobe ~/.macromedia

# firefox
rm -Rf ~/.mozilla

# fedora
rm -Rf ~/.pki ~/.spice-vdagent

# gnome 
rm -Rf ~/.abrt ~/.dbus ~/.elinks ~/.fontconfig ~/.gstreamer* ~/.mission-control
