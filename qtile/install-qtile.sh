#!/bin/bash/
#updating
sudo apt update

#installing everything i need for qtile
sudo apt install python3 python3-pip python3-venv python3-v-sim python-dbus-dev libpangocairo-1.0-0 python3-xcffib python3-cairocffi libxkbcommon-dev libxkbcommon-x11-dev -yy

#creating a virtual environment for qtile
mkdir -p ~/.local/src/
cd ~/.local/src/
python3 -m venv qtile_venv

#cloning qtile from git
cd qtile_venv/
git clone https://github.com/qtile/qtile.git

#installing qtile
bin/pip install qtile/

#copying qtile binary file into ~/.local/bin
mkdir ~/.local/bin/
cp ~/.local/src/qtile_venv/bin/qtile ~/.local/bin/

#creating a config file
cd ~/.local/src/qtile_venv/qtile
mkdir ~/.config/qtile/
touch config.py


 
