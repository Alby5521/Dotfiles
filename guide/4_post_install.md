# Post-install configuration

← **Previous section**: [3. Dotfiles installation](3_dotfiles_installation.md)

> [!WARNING]
>
> If you don't know how to start Hyprland after reboot the system, you need to digit `hyprland` after login and it will start the Hyprland environment.

## Monitors settings

You need to setup your monitor configuration in Hyprland for the correct resolution and refresh rate.

Open kitty pressing: SUPER + RETURN

Use the command hyprctl in kitty to see the connected monitors data:

```bash
hyprctl monitors all
```

You need to put the monitor name in the configuration file of Hyprland, you can open the configuration file in the path:

```bash
nano ~/Dotfiles/dotfiles/hypr/modules/monitors.conf
```

You need to put the monitor name in the configuration file in the line:

```bash
MONITOR=,preferred,auto,auto
```

Like this:

```bash
MONITOR=YourMonitorName,preferred,auto,auto
```

If you have more than one monitor you can put the others monitors configuration adding more lines like this:

```bash
MONITOR1=YourMonitorName,preferred,auto,auto
MONITOR2=YourSecondMonitorName,preferred,auto,auto
```

## Autostart settings

For automatic start Hyprland after login you need to do this:
Create a file in the path :

```bash
nano ~/.config/systemd/user/hyprland.service
```

And put this content in the file:

```bash
[Unit]
Description=Hyprland Wayland Compositor
After=graphical.target

[Service]
ExecStart=/usr/bin/Hyprland
Restart=always
Environment="XDG_SESSION_TYPE=wayland"
Environment="XDG_CURRENT_DESKTOP=Hyprland"
Environment="XDG_SESSION_DESKTOP=Hyprland"

[Install]
WantedBy=default.target
```

After that you need to enable the service with this command:

```bash
systemctl --user enable hyprland.service
```

For start the service you can use this command(or reboot):

```bash
systemctl --user start hyprland.service
```

## Wallpaper settings

For set the wallpaper you need to launch the Hyprpanel settings with the command:

```bash
hyprpanel toggleWindow settings-dialog
```

Then you go on theming section and set the wallpaper, the dart wallpaper is in `~/Dotfiles/dotfiles/hyprpanel/wallpaper/Dash_Dart_Black.jpg`

## NordVPN settings

You need to setup your NordVPN configuration in Hyprland for the correct connection.

Visit the [NordVPN website at this page](https://support.nordvpn.com/hc/en-us/articles/20196094470929-Installing-NordVPN-on-Linux-distributions) for see how to setup NordVPN on your system.

## Thunar aspect

If you want to change the aspect of Thunar, like put it in dark mode, you can use this command:

```bash
thunar -q
GTK_DEBUG=interactive thunar
```

In the interactive window opened you can customize the Thunar aspect.

## User avatar

You can change the user avatar in the path `~/Dotfiles/dotfiles/hyprpanel/avatar/` with add your desired image named: `user.png`.

← **Back to the index**: [Index](../README.md)
