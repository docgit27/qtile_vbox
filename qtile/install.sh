#!/bin/bash/
#checking if git is installed
echo "Checking if Git is installed..."
if | command -v git &> /dev/null/ then
	echo "Git not found. Installing Git"
	sudo apt update
	sudo apt install -y git
else
	echo "Git already installed..."

#cloning the repository
echo "Cloning qtile_vbox repository..."
git clone https://github.com/docgit27/qtile_vbox.git
cd qtile_vbox

#executing the scripts
echo "Installing Xorg..."
bash install-xorg.sh
echo "Installing basic packages..."
bash install-basicpackages.sh
echo "Installing qtile..."
bash install-qtile.sh
