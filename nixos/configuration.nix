{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/default.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernelPackages = pkgs.linuxPackages_latest;

  networking.hostName = "eva";

  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Tashkent";

  i18n.defaultLocale = "ru_RU.UTF-8";

  users.users.vlad = {
    isNormalUser = true;
    description = "vlad";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";

}
