# Basic installation

← **Previous section**: [2. Archinstall](2_archinstall.md)

## Internet connection

For connect to the internet you can use networkmanager.
You can scan the networks with this command:

```bash
nmcli device wifi list
```

For connect to your network with this command:

```bash
nmcli device wifi connect YOUR_NETWORK_NAME password YOUR_PASSWORD
```

## Git

For download the repository you need to have installed git and openssh. You can install it with this command:

```bash
sudo pacman -S git openssh
```

## Download the repository

For download the repository you need to clone it with this command:

```bash
git clone https://github.com/Alby5521/Dotfiles.git
```

Open the repository folder with this command:

```bash
cd Dotfiles
```

Give the permission of execution to the script with this command:

```bash
chmod +x install.sh
```

Run the script with this command:

```bash
./install.sh
```

Now you can follow the installation process.

**Next section**: [4. Post install configuration](4_post_install.md) →
