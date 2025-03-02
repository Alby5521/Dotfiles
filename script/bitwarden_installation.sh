#!/bin/bash 

echo " 8eeee8                                                  "                         
echo " 8    8   e eeeee e   e  e eeeee eeeee  eeeee eeee eeeee " 
echo " 8eeee8ee 8   8   8   8  8 8   8 8   8  8   8 8    8   8 "    
echo " 88     8 8e  8e  8e  8  8 8eee8 8eee8e 8e  8 8eee 8e  8 "
echo " 88     8 88  88  88  8  8 88  8 88   8 88  8 88   88  8 "  
echo " 88eeeee8 88  88  88ee8ee8 88  8 88   8 88ee8 88ee 88  8 "
echo "---------------------------------------------------------"
echo " "

# Start installation choice
echo "Do you want to install Bitwarden?[y/n]"
read install_start
if [ $install_start == "y" ]; then

    echo "Bitwarden installation started!"
    if sudo pacman -S --needed bitwarden -y; then
        echo "Installation of Bitwarden completed!"
    else
        echo "Error in installation of Bitwarden!" >&2
        exit 1
    fi

    # Finished installation
    echo "Bitwarden installation finished!"
else
    echo "Bitwarden not installed."
fi