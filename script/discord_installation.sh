#!/bin/bash 

echo " 8eeee8                                  "                         
echo " 8    8 e  eeeee eeee eeeee eeeee  eeeee " 
echo " 8e   8 8  8   ' 8  8 8  88 8   8  8   8 "    
echo " 88   8 8e 8eeee 8e   8   8 8eee8e 8e  8 "
echo " 88   8 88    88 88   8   8 88   8 88  8 "  
echo " 88eee8 88 8ee88 88e8 8eee8 88   8 88ee8 "
echo "---------------------------------------------"
echo " "

# Start installation choice
echo "Do you want to install Discord?[y/n]"
read install_start
if [ $install_start == "y" ]; then

    echo "Discord installation started!"
    if sudo pacman -S --needed discord -y; then
        echo "Installation of Discord completed!"
    else
        echo "Error in installation of Discord!" >&2
        exit 1
    fi

    # Finished installation
    echo "Discord installation finished!"
else
    echo "Discord not installed."
fi