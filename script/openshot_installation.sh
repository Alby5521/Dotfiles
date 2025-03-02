#!/bin/bash 

echo " 8eee88                                          "                         
echo " 8    8 eeeee eeee eeeee eeeee e   e eeeee eeeee " 
echo " 8    8 8   8 8    8   8 8   ' 8   8 8  88   8   "    
echo " 8    8 8eee8 8eee 8e  8 8eeee 8eee8 8   8   8e  "
echo " 8    8 88    88   88  8    88 88  8 8   8   88  "  
echo " 8eeee8 88    88ee 88  8 8ee88 88  8 8eee8   88  "
echo "---------------------------------------------"
echo " "

# Start installation choice
echo "Do you want to install Openshot?[y/n]"
read install_start
if [ $install_start == "y" ]; then

    echo "Openshot installation started!"
    if sudo pacman -S --needed openshot -y; then
        echo "Installation of Openshot completed!"
    else
        echo "Error in installation of Openshot!" >&2
        exit 1
    fi

    # Finished installation
    echo "Openshot installation finished!"
else
    echo "Openshot not installed."
fi