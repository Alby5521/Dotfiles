#!/bin/bash 

echo " 8eee8                                       "                          
echo " 8   8 eeeee eeeee  eeeee ee   e eeeee eeeee " 
echo " 8e  8 8  88 8   8  8   8 88   8 8   8 8   8 "    
echo " 88  8 8   8 8eee8e 8e  8 88  e8 8eee8 8e  8 "
echo " 88  8 8   8 88   8 88  8  8  8  88    88  8 "  
echo " 88  8 8eee8 88   8 88ee8  8ee8  88    88  8 "
echo "---------------------------------------------"
echo " "

# Start installation choice
echo "Do you want to install NordVPN?[y/n]"
read install_start
if [ $install_start == "y" ]; then
    echo "NordVPN installation started!"

    # Package installation and error handling
    paru -S nordvpn-bin

    if [ $? -eq 0 ]; then
        echo "NordVPN installed successfully!"
    else
        echo "Error during NordVPN installation" >&2
        exit 1
    fi

    # Finished installation
    echo "NordVPN installation finished!"
else
    echo "NordVPN not installed."
fi