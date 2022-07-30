#!/bin/bash -e

cd /root

#find latest version here:
#https://ui.vision/rpa/x/download

wget https://download.ui.vision/x/ui.vision-xmodules-linux-v202102.AppImage

chomod +x ui.vision-xmodules-linux-v202102.AppImage

#https://docs.appimage.org/user-guide/run-appimages.html#extract-the-contents-of-an-appimage
./ui.vision-xmodules-linux-v202102.AppImage --appimage-extract

cp -r squashfs-root/usr/xmodules ./xmodules

rm -rf squashfs-root

bash 1install.sh