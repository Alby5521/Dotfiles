#!/bin/bash 

echo " 8                                                   "                          
echo " 8     eeeee eeee eeeee e     eeeee eeee eeeee eeeee " 
echo " 8e    8  88 8  8 8   8 8     8   ' 8    8   8 8   8 "    
echo " 88    8   8 8e   8eee8 8e    8eeee 8eee 8e  8 8e  8 "
echo " 88    8   8 88   88  8 88       88 88   88  8 88  8 "  
echo " 88eee 8eee8 88e8 88  8 88eee 8ee88 88ee 88  8 88ee8 "
echo "-----------------------------------------------------"
echo " " 

# Start installation choice
echo "Do you want to install LocalSend?[y/n]"
read install_start
if [ $install_start == "y" ]; then
    echo "LocalSend installation started!"

    # Package installation and error handling
    paru -S localsend-bin

    if [ $? -eq 0 ]; then
        echo "LocalSend installed successfully!"
    else
        echo "Error during LocalSend installation" >&2
        exit 1
    fi

    # Finished installation
    echo "LocalSend installation finished!"
else
    echo "LocalSend not installed."
fi