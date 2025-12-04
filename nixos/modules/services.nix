{ pkgs, config, ... }: {
  services.printing.enable = true;
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services.xserver.videoDrivers = ["nvidia"];
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = false;

  nix = {
    settings.auto-optimise-store = true;
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 30d";
    };
  };
}
