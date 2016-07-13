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

