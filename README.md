# Vortex NixOS Configuration
My NixOS configuration, which I use for leisure, gaming, and work. Very simple configuration. Uses: Home-manager, Flake, unstable channel, nvidia+amd, kde plasma

# Requirements

- You must be running NixOS.
- This repository must be located in your folder
- Installation must be done using GPT and UEFI. If your computer does not support this type of installation, you will have to change moduels/boot.nix yourself

# Install

Run this command to ensure Git & Vim are installed:

```
nix-shell -p git neovim #It is preferable to use a file editor that is convenient for you.
```


```
git clone https://github.com/YellowVortext/my-nix-conf.git
cd my-nix-conf
```

```
cp -r nixos <your-host>/<your-hostname>
```

# Edits

Generate your hardware.nix in derictory:

```
nixos-generate-config --show-hardware-config > <your-hosts>/<your-desired-hostname>/hardware-configuration.nix
```


Go to user.nix and replace “user” with your name.

Go to timezone.nix and replace “Asia/Tashkent” in your time.

In the modules/nvidia.nix file, replace the nvidia modules with amd or intel modules according to your hardware specifications.

# Startup

Insert this line into your configuration.nix to enable flakes on your system

```
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
```
Then install the flake replacing hostname with whatever you put as the hostname:

```
sudo nixos-rebuild switch --flake .#hostname
```
Well, that's all, good luck!
