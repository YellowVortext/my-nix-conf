{ pkgs, stateVersion, hostname, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./packages.nix
    ./modules/default.nix
  ];

  networking.hostName = "eva";

  services.printing.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.flatpak.enable = true;

  i18n.defaultLocale = "ru_RU.UTF-8";

  system.stateVersion = "25.11";
}

