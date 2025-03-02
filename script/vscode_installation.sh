#!/bin/bash 

echo " 88   8                             "                          
echo " 88   8 eeeee eeee eeeee eeeee eeee " 
echo " 88  e8 8   ' 8  8 8  88 8   8 8    "    
echo " '8  8  8eeee 8e   8   8 8e  8 8eee "
echo " 8  8     88 88   8   8 88  8 88    "  
echo " 8ee8  8ee88 88e8 8eee8 88ee8 88ee  "
echo "------------------------------------"
echo " "

# Start installation choice
echo "Do you want to install Visual Studio Code?[y/n]"
read install_start
if [ $install_start == "y" ]; then
    echo "Visual Studio Code installation started!"

    # Package installation and error handling
    paru -S visual-studio-code-bin

    if [ $? -eq 0 ]; then
        echo "Visual Studio Code installed successfully!"
    else
        echo "Error during Visual Studio Code installation" >&2
        exit 1
    fi

    # Finished installation
    echo "Visual Studio Code installation finished!"
else
    echo "Visual Studio Code not installed."
fi