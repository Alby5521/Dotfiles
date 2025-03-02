#!/bin/bash 

echo " 8eeee8                               "                         
echo " 8    8 eeeee eeee e   e  eeee eeeee  " 
echo " 8e   8 8  88 8  8 8   8  8    8   8  "    
echo " 88   8 8   8 8e   8eee8e 8eee 8eee8e "
echo " 88   8 8   8 88   88   8 88   88   8 "  
echo " 88eee8 8eee8 88e8 88   8 88ee 88   8 "
echo "--------------------------------------"
echo " "

# Start installation choice
echo "Do you want to install Docker?[y/n]"
read install_start
if [ $install_start == "y" ]; then

    echo "Docker installation started!"
    if sudo pacman -S --needed docker -y; then
        echo "Installation of Docker completed!"
    else
        echo "Error in installation of Docker!" >&2
        exit 1
    fi

    # Finished installation
    echo "Docker installation finished!"
else
    echo "Docker not installed."
fi