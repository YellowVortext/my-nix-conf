{ config, pkgs, ... }:
{
  home.username = "vlad";
  home.homeDirectory = "/home/vlad";
  home.stateVersion = "25.11";

  programs.git.enable = true;

  programs.bash = {
    enable = true;
    shellAliases = {
      update = "sudo nixos-rebuild switch --flake /home/vlad/nixos#eva";
    };
  };
}
