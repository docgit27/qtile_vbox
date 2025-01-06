##!/bin/bash/
#updating
sudo apt update

#installing everything i need for qtile
sudo apt install python3 python3-pip python3-venv python3-v-sim python-dbus-dev libpangocairo-1.0-0 python3-xcffib python3-cairocffi libxkbcommon-dev libxkbcommon-x11-dev pulseaudio fonts-symbola fonts-noto-color-emoji fonts-font-awesome -yy

#creating a virtual environment for qtile, pulsectl and pulsectl-asyncio
mkdir -p ~/.local/src/
cd ~/.local/src/
python3 -m venv qtile_venv

#cloning qtile and others packages from git
cd qtile_venv/
git clone https://github.com/qtile/qtile.git
git clone https://github.com/mk-fg/python-pulse-control.git
git clone https://github.com/mhthies/pulsectl-asyncio.git
git clone https://github.com/elParaguayo/qtile-extras.git
git clone https://github.com/Bluetooth-Devices/dbus-fast.git

#installing qtile and other packages
bin/pip install qtile
bin/pip install pulsectl
bin/pip install pulsectl_asyncio
bin/pip install qtile-extras
bin/pip install dbus-fast

