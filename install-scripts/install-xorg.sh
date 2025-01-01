#!/bin/bash

#updating
sudo apt update

#installing X11
sudo apt install xserver-xorg-video-all xserver-xorg-core xinit

#configuring xorg
cd /etc/X11/
Xorg -configure
#follow the instructions on the screen

#creating a ~/.xinitrc file to startx
cd
touch .xinitrc
echo "#!/bin/bash" > ~/.xinitrc
echo "exec qtile start" > ~/.xinitrc

 
