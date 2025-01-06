#!/bin/bash/

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Attempting to install Git..."
    
    # Use apt to install git
    if command -v apt &> /dev/null; then
        sudo apt update
        sudo apt install git -y
    else
        echo "Cannot install Git automatically using apt. Please install Git manually and run this script again."
        exit 1
    fi
    
 # Check again if git is installed after attempting to install
    if ! command -v git &> /dev/null; then
        echo "Git installation failed. Please install Git manually and run this script again."
        exit 1
    fi

else 
    echo "Git already installed. Continuing the installation process..."
    exit 1
fi

clear

#executing the scripts
echo "Installing Xorg..."
bash ~/qtile_vbox/install_scripts/install-xorg.sh
echo "Installing basic packages..."
bash ~/qtile_vbox/install_scripts/install-basicpackages.sh
echo "Installing qtile..."
bash ~/qtile_vbox/install_scripts/install-qtile.sh
echo "Installing picom"
bash ~/qtile_vbox/install_scripts/install-picom.sh

clear

