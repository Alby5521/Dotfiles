#!/bin/bash 

echo " 8eeee8                                   "                          
echo " 8      eeeee eeeee eeeee e  eeee e    e  " 
echo " 8eeeee 8   8 8  88   8   8  8    8    8  "    
echo "     88 8eee8 8   8   8e  8e 8eee 8eeee8  "
echo " e   88 88    8   8   88  88 88     88    "  
echo " 8eee88 88    8eee8   88  88 88     88    "
echo "------------------------------------------"
echo " " 

# Start installation choice
echo "Do you want to install Spotify?[y/n]"
read install_start
if [ $install_start == "y" ]; then
    echo "Spotify installation started!"

    # Package installation and error handling
    paru -S spotify

    if [ $? -eq 0 ]; then
        echo "Spotify installed successfully!"
    else
        echo "Error during Spotify installation" >&2
        exit 1
    fi

    # Finished installation
    echo "Spotify installation finished!"
else
    echo "Spotify not installed."
fi