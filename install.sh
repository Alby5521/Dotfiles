#!/bin/bash 

# Introduction
echo " 8   8                                             "
echo " 8   8 e    e eeeee eeeee  e     eeeee eeeee eeeee "
echo " 8eee8 8    8 8   8 8   8  8     8   8 8   8 8   8 "
echo " 88  8 8eeee8 8eee8 8eee8e 8e    8eee8 8e  8 8e  8 "
echo " 88  8   88   88    88   8 88    88  8 88  8 88  8 "
echo " 88  8   88   88    88   8 88eee 88  8 88  8 88ee8 "
echo "---------------------------------------------------"
echo " "
echo "Welcome to my Hyprland installation script!"
echo "This script will install my Hyprland configuration in an easy way."
echo "Please follow the guide in the repository to install the configuration."

echo " "
echo " 8                                                                 "
echo " 8  eeeee eeeee eeeee eeeee e     e     eeeee eeeee e  eeeee eeeee "
echo " 8e 8   8 8   '   8   8   8 8     8     8   8   8   8  8  88 8   8 "
echo " 88 8e  8 8eeee   8e  8eee8 8e    8e    8eee8   8e  8e 8   8 8e  8 "
echo " 88 88  8    88   88  88  8 88    88    88  8   88  88 8   8 88  8 "
echo " 88 88  8 8ee88   88  88  8 88eee 88eee 88  8   88  88 8eee8 88  8 "
echo "-------------------------------------------------------------------"
echo " "
# Start installation choice
echo "Do you want to start the installation?[y/n]"
read install_start
if [ $install_start == "y" ]; then
    echo "Starting installation..."
    # Basic packages installation for Hyprland
    chmod +x ./script/basic_packages.sh
    ./script/basic_packages.sh
    echo " "
    # Paru installation
    chmod +x ./script/paru_installation.sh
    ./script/paru_installation.sh
    echo " "
    # Brave installation
    chmod +x ./script/brave_installation.sh
    ./script/brave_installation.sh
    echo " "
    # Hyprpanel installation
    chmod +x ./script/hyprpanel.sh
    ./script/hyprpanel.sh
    echo " "
    # Hypr utilities installation
    chmod +x ./script/hypr_utilities.sh
    ./script/hypr_utilities.sh
    echo " "
    # Wofi installation
    chmod +x ./script/wofi.sh
    ./script/wofi.sh
    echo " "
    # Visual Studio Code installation
    chmod +x ./script/vscode_installation.sh
    ./script/vscode_installation.sh
    echo " "
    # Obsidian installation
    chmod +x ./script/obsidian_installation.sh
    ./script/obsidian_installation.sh
    echo " "
    # Telegram installation
    chmod +x ./script/telegram_installation.sh
    ./script/telegram_installation.sh
    echo " "
    # Discord installation
    chmod +x ./script/discord_installation.sh
    ./script/discord_installation.sh
    echo " "
    # Openshot installation
    chmod +x ./script/openshot_installation.sh
    ./script/openshot_installation.sh
    # Bitwarden installation
    chmod +x ./script/bitwarden_installation.sh
    ./script/bitwarden_installation.sh
    echo " "
    # NordVPN installation
    chmod +x ./script/nordvpn_installation.sh
    ./script/nordvpn_installation.sh
    echo " "
    # Spotify installation
    chmod +x ./script/spotify_installation.sh
    ./script/spotify_installation.sh
    echo " "
    # LocalSend installation
    chmod +x ./script/localsend_installation.sh
    ./script/localsend_installation.sh
    echo " "
    # Docker installation
    chmod +x ./script/docker_installation.sh
    ./script/docker_installation.sh
    echo " "
    echo "Installation finished!"
    echo " "
    echo "Cleaning up the system..."
    paru -c
    echo "System cleaned!"
    echo " "
else
    echo "Installation canceled!"
    exit 1
fi

# Finished installation
echo "Please follow the guide in the repository to finish the configuration."
echo "DON'T DELETE THE REPOSITORY FOLDER!"
echo "Thank you for using my Hyprland installation script!"

echo " 8'''8                                "                                
echo " 8   8  eeee eeeee  eeeee eeeee eeeee "
echo " 8eee8e 8    8   8  8  88 8  88   8   "
echo " 88   8 8eee 8eee8e 8   8 8   8   8e  "  
echo " 88   8 88   88   8 8   8 8   8   88  "  
echo " 88   8 88ee 88eee8 8eee8 8eee8   88  "
echo "--------------------------------------" 
# Reboot system choice
echo "Do you want to reboot your system?[y/n]"
read reboot_system
if [ $reboot_system == "y" ]; then
    echo "Rebooting system..."
    sudo reboot
else
    echo "You can reboot your system later."
    exit 1
fi  