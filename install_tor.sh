#!/bin/bash
pacman -S wget zenity mozilla-common desktop-file-utils
# please make sure that version is up to date
wget https://www.torservers.net/mirrors/torproject.org/dist/torbrowser/6.0.2/tor-browser-linux64-6.0.2_en-US.tar.xz
tar xvf tor-browser-linux64-6.0.2_en-US.tar.xz
mv tor-browser_en-US /opt/tor-browser
chmod -R 755 /opt/tor-browser

