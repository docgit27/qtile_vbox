##!/bin/bash/
#updating
sudo apt update

#installing everything i need for qtile
sudo apt install python3 python3-pip python3-venv python3-v-sim python-dbus-dev libpangocairo-1.0-0 python3-xcffib python3-cairocffi libxkbcommon-dev libxkbcommon-x11-dev pulseaudio fonts-symbola fonts-noto-color-emoji fonts-font-awesome -yy

#creating a virtual environment for qtile, pulsectl and pulsectl-asyncio
mkdir -p ~/.local/src/
cd ~/.local/src/
python3 -m venv qtile_venv

#cloning qtile, pulsectl and pulsectl-asyncio from git
cd qtile_venv/
git clone https://github.com/qtile/qtile.git
git clone https://github.com/mk-fg/python-pulse-control.git
git clone https://github.com/mhthies/pulsectl-asyncio.git

#installing qtile, pulsectl and pulsectl-asyncio
bin/pip install qtile/
bin/pip install pulsectl/
bin/pip install pulsectl_asyncio/

#copying qtile binary file into ~/.local/bin
mkdir ~/.local/bin/
cp ~/.local/src/qtile_venv/bin/qtile ~/.local/bin/

#creating a config file
cd ~/.local/src/qtile_venv/qtile
mkdir ~/.config/qtile/
touch config.py


 
