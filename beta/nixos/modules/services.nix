{ pkgs, config, ... }: {
  services = {
    printing.enable = false;
    xserver.videoDrivers = ["nvidia"];
    envfs.enable = true
    gvfs.enable = true;
    udisks2.enable = true;
    power-profiles-daemon.enable = true;
    pulseaudio.enable = false;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    xserver.xkb = {
      layout = "us";
      variant = "";
    };
    displayManager = {
      sddm = {
        enable = true;
        wayland.enable = true;
        theme = "breeze";
      };
  };

  programs.direnv.enable = true;
  security.rtkit.enable = true;
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = false;
  services.blueman.enable = true;

  nix = {
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };
}
