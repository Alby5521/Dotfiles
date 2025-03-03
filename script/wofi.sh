#!/bin/bash

echo " 8   8  8               "               
echo " 8   8  8 eeeee eeee e  "  
echo " 8e  8  8 8  88 8    8  " 
echo " 88  8  8 8   8 8eee 8e "
echo " 88  8  8 8   8 88   88 " 
echo " 88ee8ee8 8eee8 88   88 "
echo "------------------------"
echo " "

# Introduction
echo "Wofi installation started!"

echo "Folder symlink started!"

# Remove existing folder
if [ -e ~/.config/wofi ] || [ -L ~/.config/wofi ]; then
    echo "Removing ~/.config/wofi"
    rm -rf ~/.config/wofi
fi

# Symlink creation
ln -s ~/Dotfiles/dotfiles/wofi ~/.config/wofi

# Symlink error handling
if [ -L ~/.config/wofi ]; then
    echo "Symlink created!"
else
    echo "Impossible create symlink" >&2
    exit 1
fi

# Finished folder symlink
echo "Folder symlink completed!"

# Finished installation
echo "Wofi installation finished!"