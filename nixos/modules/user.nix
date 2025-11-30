{ pkgs, user, ... }: {
  users.users.user = {
    isNormalUser = true;
    description = "user";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      neovim
    ];
  };
  services.displayManager.autoLogin = {
    enable = true;
    user = "user";
      };
}

