#!/bin/bash
#pacman -S grub efibootmgr os-prober
pacman --noconfirm -Syu
# install basic required packages
pacman --noconfirm -S sudo vim wget git unzip openssh bash-completion
# install wlan and sound  utilities
pacman --noconfirm -S iw wpa_supplicant dialog alsa-utils
# install Xorg
pacman --noconfirm -S xorg-server xorg-server-utils xorg-xinit xf86-video-intel xf86-input-synaptics xf86-input-libinput
# install i3 window manager and slim display manager
pacman --noconfirm -S i3 slim dmenu
# install some nice fonts
pacman --noconfirm -S ttf-inconsolata terminus-font
# install applications
pacman --noconfirm -S xclip feh rxvt-unicode chromium skype
# install JDK 8
pacman --noconfirm -S jdk8-openjdk
# enable display and window managers
systemctl start i3.service
systemctl start slim.service
systemctl enable i3.service
systemctl enable slim.service
# install virtualbox-guest-utils if needed
# pacman --noconfirm -S virtualbox-guest-utils

