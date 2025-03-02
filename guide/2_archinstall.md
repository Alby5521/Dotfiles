# Archinstall

← **Previous section**: [1. Requirements](1_requirements.md)

In this section, you can find the recommended settings for the Archinstall tool. Probably you will need to modify parameters for keyboard layout, mirrors and timezone to adapt their for your configuration.

## Internet connection

For connect to the internet you can use the iwctl tool.
You can enter in the tool with this command:

```bash
iwctl
```

Now you need to see the name of your network interface with this command:

```bash
device list
```

Now you can scan the networks with this command:

```bash
station YOUR_INTERFACE scan
```

Now you can see the networks with this command:

```bash
station YOUR_INTERFACE get-networks
```

Now you can connect to your network with this command:

```bash
station YOUR_INTERFACE connect YOUR_NETWORK_NAME
```

Now you need to insert the password of your network.

For exit from the tool you can use the `exit` command.

## Archinstall settings

- Locales:
  - Keyboard layout: it
  - Locale language: en_US
  - Locale encoding: UTF-8
- Mirrors:
  - Mirror regions: italy
- Disk configuration:
  - Use best-effort default partition layout
  - Filesystem: btrfs
  - Use compression: yes
- Disk encryption:
  - Not encrypted
- Swap:
  - Enable swap: yes
- Bootloader:
  - Grub(default)
- Hostname:
  - _Choose an hostname_
- Password:
  - _Choose a password_
- User account:
  - Username: _Choose an username_
  - Password: _Choose a password_
  - Superuser: yes
- Profile:
  - None selected
- Audio:
  - PipeWire
- Kernel:
  - Linux(default)
- Network:
  - NetworkManager
- Additional packages:
  - None selected
- Optional repositories:
  - None selected
- Timezone:
  - Europe/Rome
- Automatic time sync:
  - Enable

**Next section**: [3. Dotfiles installation](3_dotfiles_installation.md) →
