#!/bin/bash 

echo " eeeee eeeee eeeee  e   e " 
echo " 8   8 8   8 8   8  8   8 " 
echo " 8eee8 8eee8 8eee8e 8e  8 " 
echo " 88    88  8 88   8 88  8 " 
echo " 88    88  8 88   8 88ee8 "
echo "--------------------------"
echo " " 

REPO_URL="https://aur.archlinux.org/paru.git"
DIR_NAME="paru"

# Introduction
echo "AUR helper(Paru) installation started!"

# Repository cloning and error handling
if git clone "$REPO_URL"; then
  cd "$DIR_NAME"
else
  echo "Error in Paru repository cloning" >&2
  exit 1
fi

# Package installation and error handling
if makepkg -si; then
  cd ..
else
  echo "Error in Paru installation" >&2
  exit 1
fi

# Directory removal and error handling
if rm -rf "$DIR_NAME"; then
  echo "Paru directory removed!"
else
  echo "Error in paru directory removing" >&2
  exit 1
fi

# Finished installation
echo "AUR helper(Paru) installation completed!"