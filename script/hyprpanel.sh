#!/bin/bash 

echo " 8   8                     8eeee8                        "       
echo " 8   8 e    e eeeee eeeee  8    8 eeeee eeeee eeee e     "    
echo " 8eee8 8    8 8   8 8   8  8eeee8 8   8 8   8 8    8     "    
echo " 88  8 8eeee8 8eee8 8eee8e 88     8eee8 8e  8 8eee 8e    "    
echo " 88  8   88   88    88   8 88     88  8 88  8 88   88    "    
echo " 88  8   88   88    88   8 88     88  8 88  8 88ee 88eee "
echo "----------------------------------------------------------"
echo " "


packages=("wireplumber" "libgtop" "bluez" "bluez-utils" "btop" "networkmanager" "dart-sass" "wl-clipboard" "brightnessctl" "swww" "python" "upower" "pacman-contrib" "power-profiles-daemon" "gvfs")

# Introduction
echo "Hyprpanel installation started!"

# Package installation and error handling
paru -S ags-hyprpanel-git

if [ $? -eq 0 ]; then
    echo "Hyprpanel installed successfully!"
else
    echo "Error during Hyprpanel installation" >&2
    exit 1
fi

# Installation and error handling
for pkg in "${packages[@]}"; do
    if sudo pacman -S --needed "$pkg" -y; then
        echo "Installation of $pkg completed!"
    else
        echo "Error in installation of $pkg!" >&2
        exit 1
    fi
done

echo "Folder symlink started!"

# Remove existing folder
if [ -e ~/.config/hyprpanel ] || [ -L ~/.config/hyprpanel ]; then
    echo "Removing ~/.config/hyprpanel"
    rm -rf ~/.config/hyprpanel
fi

# Symlink creation
ln -s ~/Hyprland_Dotfiles_Personal/dotfiles/hyprpanel ~/.config/hyprpanel

# Symlink error handling
if [ -L ~/.config/hyprpanel ]; then
    echo "Symlink created!"
else
    echo "Impossible create symlink" >&2
    exit 1
fi

# Finished folder symlink
echo "Folder symlink completed!"

# Finished installation
echo "Hyprpanel installation completed!"