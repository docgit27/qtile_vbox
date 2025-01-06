#!/bin/bash

#copying qtile binary file into ~/.local/bin
mkdir ~/.local/bin/
cp ~/.local/src/qtile_venv/bin/qtile ~/.local/bin/

#creating a config file
mkdir ~/.config

#copying config files into the new destination
cp ~/qtile_vbox/config/. ~/.config 
