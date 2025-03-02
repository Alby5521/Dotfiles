#!/bin/bash 

echo " 8eee88                                      "                         
echo " 8    8 eeeee  eeeee e  eeeee e  eeeee eeeee " 
echo " 8    8 8   8  8   ' 8  8   8 8  8   8 8   8 "    
echo " 8    8 8eee8e 8eeee 8e 8e  8 8e 8eee8 8e  8 "
echo " 8    8 88   8    88 88 88  8 88 88  8 88  8 "  
echo " 8eeee8 88eee8 8ee88 88 88ee8 88 88  8 88  8 "
echo "---------------------------------------------"
echo " "

# Start installation choice
echo "Do you want to install Obsidian?[y/n]"
read install_start
if [ $install_start == "y" ]; then

    echo "Obsidian installation started!"
    if sudo pacman -S --needed obsidian -y; then
        echo "Installation of Obsidian completed!"
    else
        echo "Error in installation of Obsidian!" >&2
        exit 1
    fi

    # Finished installation
    echo "Obsidian installation finished!"
else
    echo "Obsidian not installed."
fi