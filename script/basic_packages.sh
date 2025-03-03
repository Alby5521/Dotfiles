#!/bin/bash 

# Installed packages
packages=("gtk4" "kitty" "nano" "fastfetch" "hyprland" "wofi" "thunar" "ttf-cascadia-code-nerd")

# Introduction
echo "Basic packages installation started!"

# Installation and error handling
for pkg in "${packages[@]}"; do
    if sudo pacman -S --needed "$pkg" -y; then
        echo "Installation of $pkg completed!"
    else
        echo "Error in installation of $pkg!" >&2
        exit 1
    fi
done

# Folder symlink
echo "Folders symlink started!"

# Remove existing folders
if [ -e ~/.config/hypr ] || [ -L ~/.config/hypr ]; then
    echo "Removing ~/.config/hypr"
    rm -rf ~/.config/hypr
fi

if [ -e ~/.config/kitty ] || [ -L ~/.config/kitty]; then
    echo "Removing ~/.config/kitty"
    rm -rf ~/.config/kitty
fi

# Symlink creation
ln -s ~/Dotfiles/dotfiles/hypr ~/.config/hypr
ln -s ~/Dotfiles/dotfiles/kitty ~/.config/kitty

# Symlink error handling
if [ -L ~/.config/hypr ]; then
    echo "Symlink created for Hyprland!"
else
    echo "Impossible create Hyprland symlink" >&2
    exit 1
fi

if [ -L ~/.config/kitty ]; then
    echo "Symlink created for Kitty!"
else
    echo "Impossible create Kitty symlink" >&2
    exit 1
fi

# Finished folder symlink
echo "Folder symlink completed!"

# Finished installation
echo "Basic packages installation completed!"