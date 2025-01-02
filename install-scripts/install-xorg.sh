#!/bin/bash

#updating
sudo apt update

clear

#selecting the right video driver to install
# Function to install selected packages
install_packages() {
    sudo apt install -y "$@"
}

# Video drivers
video_drivers=("xserver-xorg-video-amdgpu" "xserver-xorg-video-ati" "xserver-xorg-video-dummy" "xserver-xorg-video-fbdev" "xserver-xorg-video-nouveau" "xserver-xorg-video-vesa" "xserver-xorg-video-vmware" "xserver-xorg-video-intel" "xserver-xorg-video-qxl" "xserver-xorg-video-all" "xserver-xorg-video-radeon")

echo "Choose Video Drivers to install (space-separated list, e.g., 1 3 5):"
for i in "${!video_drivers[@]}"; do
    echo "$((i+1)). ${video_drivers[i]}"
done
read -rp "Selection: " video_drivers_selection

selected_video_drivers=()
for index in $video_drivers_selection; do
    selected_video_drivers+=("${video_drivers[index-1]}")
done

#installing X11
echo "Installing Xorg..."
sudo apt install xserver-xorg-core xinit -y

clear

#configuring xorg
echo "Configuring Xorg..."
cd /etc/X11/
Xorg -configure
#follow the instructions on the screen

#creating a ~/.xinitrc file to startx
cd
touch .xinitrc
echo "#!/bin/bash" > ~/.xinitrc
echo "exec qtile start" > ~/.xinitrc

clear 
