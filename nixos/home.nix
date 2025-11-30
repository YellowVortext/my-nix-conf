{ config, pkgs, ... }:

{
  home.username = "vlad";
  home.homeDirectory = "/home/vlad";
  home.stateVersion = "25.05";
  programs.git.enable = true;
  programs.bash = {
    enable = true;
    shellAliases = {
      sub = "echo Subscribe to my channel";
    };
  };
}
