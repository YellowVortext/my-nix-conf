{ pkgs, ... }:

{
  programs = {
    steam = {
        enable = true;
        gamescopeSession.enable = true;
    };
    gamemode.enable = true;
  };
  environment.systemPackages = with pkgs; [
    mangohud
    protonplus
    heroic
    lutris
    bottles
    antimicrox
    steam-run
  ];
}
