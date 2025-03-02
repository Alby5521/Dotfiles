#!/bin/bash 

echo " ee8ee                                            "                         
echo "   8   eeee e     eeee eeeee eeeee  eeeee eeeeeee " 
echo "   8e  8    8     8    8   8 8   8  8   8 8  8  8 "    
echo "   88  8eee 8e    8eee 8e    8eee8e 8eee8 8e 8  8 "
echo "   88  88   88    88   88 e8 88   8 88  8 88 8  8 "  
echo "   88  88ee 88eee 88ee 88ee8 88   8 88  8 88 8  8 "
echo "---------------------------------------------"
echo " "

# Start installation choice
echo "Do you want to install Telegram?[y/n]"
read install_start
if [ $install_start == "y" ]; then

    echo "Telegram installation started!"
    if sudo pacman -S --needed telegram-desktop -y; then
        echo "Installation of Telegram completed!"
    else
        echo "Error in installation of Telegram!" >&2
        exit 1
    fi

    # Finished installation
    echo "Telegram installation finished!"
else
    echo "Telegram not installed."
fi