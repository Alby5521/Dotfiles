# Hyprland Dotfiles Personal

In this repository, you can find all the configuration files and the bash installer that I use for my Arch Linux installation.

Before starting installation you need to read the entire guide to understand the installation process. In some sections experienced users can find some information that they already know, but I recommend reading the entire guide to understand the installation process and my specific configurations.

In the installation process it's used gnu stow to install the dotfiles, so it creates a symbolic link to the files in the repo cloned in your home directory. This way you can easily modify the files in the repo and take effect in the system.

> [!IMPORTANT]
>
> Don't delete the repo after installation, because the dotfiles are linked to the files in the repo. If you delete the repo, the dotfiles will be deleted too.

The installation script is created to install not only dotfiles, it will install all the software that I use in my daily life. During the installation process, you can choose which software to install.

## Table of contents

1. [Requirements](guide/1_requirements.md)
2. [Archinstall](guide/2_archinstall.md)
3. [Dotfiles installation](guide/3_dotfiles_installation.md)
4. [Post-install configuration](guide/4_post_install.md)

## Features

### Screenshot

![Screenshot](./guide/images/desktop.png)

### Installed software

- Terminal: Kitty
- File manager: Thunar
- App launcher: Wofi
- Browser: Brave
- Video player: VLC
- Password manager: Bitwarden
- Text editor: Visual Studio Code
- VPN: NordVPN
- Chat: Discord and Telegram
- Writing: Obsidian
- Music: Spotify
- File transfer: LocalSend
- Video editing: OpenShot
- Utilities: Docker

### Keybindings

- Kitty: SUPER + RETURN
- Close window: SUPER + Q
- Thunar: SUPER + E
- Wofi: SUPER + SPACE
- Brave: SUPER + B
- Close Hyprland: SUPER + M
- Screenshot a window: SUPER + PRINT
- Screenshot a monitor: PRINT
- Screenshot a region: SHIFT + PRINT
- Lock screen: SUPER + L
- Vscode: SUPER + C
- Telegram: SUPER + T

## Resourceshttps://hyprpanel.com/getting_started/hyprpanel.html

- [Hyprland Wiki](https://wiki.hyprland.org/)
- [HyprPanel Wiki](https://hyprpanel.com/getting_started/hyprpanel.html)
- [Youtube guide](https://www.youtube.com/playlist?list=PLsz00TDipIfeDrFeSA56W1wPrYYg_Kd-b)
- [Wallpaper image](https://github.com/kevmoo/dart_side?tab=readme-ov-file)
- [Dotfiles ML4W](https://github.com/mylinuxforwork/dotfiles)
- [Dotfiles TypeCraft](http://github.com/typecraft-dev/dotfiles/tree/master)
