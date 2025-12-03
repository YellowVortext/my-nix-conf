# Vortex NixOS Configuration
My very simple NixOS configuration, which I use for leisure, gaming, and work. To be honest, I originally created this repository just for myself, but it's a real pain to log into my Git account via the terminal every single time, so I just decided to make it public. Uses: Home-manager, Flake, unstable channel, amd+nvidia, kde plasma

# Requirements
![Demo](https://raw.githubusercontent.com/YellowVortext/my-nix-conf/main/demonstration/skreen.png)
- You must be running NixOS.
- This repository must be located in your folder
- Installation must be done using GPT and UEFI. If your computer does not support this type of installation, you will have to change moduels/boot.nix yourself

# Install

Run this command to ensure Git & Vim are installed:

```
nix-shell -p git
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


Go to configuration.nix and replace “nixos” with your hostname.

Go to modules/user.nix and replace “user” with your name.

Go to modules/timezone.nix and replace “Asia/Tashkent” in your time.

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
