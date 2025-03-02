#!/bin/bash 

echo " eeeee  eeeee  eeeee ee   e eeee "
echo " 8   8  8   8  8   8 88   8 8    "
echo " 8eee8e 8eee8e 8eee8 88  e8 8eee "
echo " 88   8 88   8 88  8  8  8  88   "
echo " 88eee8 88   8 88  8  8ee8  88ee "
echo "---------------------------------"
echo " "

# Introduction
echo "Brave installation started!"

# Script download and error handling
curl -fsS https://dl.brave.com/install.sh -o install.sh
if [[ $? -ne 0 ]]; then
    echo "Failed to download the script for Brave installation" >&2
    exit 1
fi

# Script validation
if [[ ! -s install.sh ]]; then
    echo "The script for Brave installation is not valid" >&2
    exit 1
fi

# Script execution and error handling
bash install.sh
if [[ $? -ne 0 ]]; then
    echo "Script for Brave installation failed" >&2
    exit 1
fi

# Finished installation
echo "Brave packages installation completed!"