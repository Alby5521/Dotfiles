#!/bin/bash 

echo " 8   8 "                                      
echo " 8   8 eeeee e  e     e eeeee e  eeee eeeee " 
echo " 8e  8   8   8  8     8   8   8  8    8   e " 
echo " 88  8   8e  8e 8e    8e  8e  8e 8eee 8eeee " 
echo " 88  8   88  88 88    88  88  88 88      88 "
echo " 88ee8   88  88 88eee 88  88  88 88ee 8ee88 "
echo "--------------------------------------------"
echo " "

packages=("hyprlock" "hypridle" "jq" "grim" "slurp" "wl-clipboard" "libnotify")

# Introduction
echo "Hypr utilities installation started!"

# Installation and error handling
for pkg in "${packages[@]}"; do
    if sudo pacman -S --needed "$pkg" -y; then
        echo "Installation of $pkg completed!"
    else
        echo "Error in installation of $pkg!" >&2
        exit 1
    fi
done

paru -S hyprshot

if [ $? -eq 0 ]; then
    echo "hyprshot installed successfully!"
else
    echo "Error during hyprshot installation" >&2
    exit 1
fi

# Finished installation
echo "Hypr utilities installation finished!"