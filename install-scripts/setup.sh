#!/bin/bash

#copying qtile binary file into ~/.local/bin
mkdir ~/.local/bin/
cp ~/.local/src/qtile_venv/bin/qtile ~/.local/bin/

# Check if there's already a .config directory
if [ ! -d "$HOME/.config" ]; then
    echo "Directory $HOME/.config does not exist. Creating the directory..."
    
    # Create the directory
    mkdir ~/.config
    
else
     echo "Directory $HOME/.config already exists. Continuing the setup process..."
fi

#copying config files into the new destination
cp -r ~/qtile_vbox/config/. ~/.config 

#copying .bashrc into his new destination
cp ~/qtile_vbox/config/.bashrc ~

#creating a ~/.xinitrc file to startx
touch ~/.xinitrc
set +H  #disabling history expansion temporarily
printf "#!/bin/bash/\nqtile start\n" > ~/.xinitrc
set -H  #enabling history expansion
chmod +x ~/.xinitrc 

