#!/bin/bash
# run this script as a regular user (not root)
rm ~/.bashrc ~/.xinitrc
cp .bashrc ~/
cp .vimrc ~/
cp .xinitrc ~/
cp .Xresources ~/
cp .i3status.conf ~/
cp -R .i3 ~/
mkdir ~/repositories ~/Downloads ~/Images
# set some basic git config settings
git config --global core.editor vim
git config --global core.eol lf
#git config --global user.name <your name>
#git config --global user.email <your email>

