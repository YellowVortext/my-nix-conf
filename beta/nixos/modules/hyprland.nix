{ pkgs, config, libs, ... }: {
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [ xdg-desktop-portal-hyprland ];
  };
  environment.systemPackages = with pkgs; [
    kitty
    swaybg
    waybar
    dunst
    wofi
    nwg-dock-hyprland
  ];
}
