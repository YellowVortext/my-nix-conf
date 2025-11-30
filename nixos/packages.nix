{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
      aseprite
      firefox
      foliate
      calibre
      spotify
      obsidian
      darktable
      mission-center
      video-downloader
      libreoffice
      qbittorrent
      telegram-desktop
      bitwarden-desktop
      fastfetch
      gearlever
      aseprite
      easyeffects
      discord
      inkscape
      localsend
      audacity
      reaper
      blender (blender.override {cudaSupport=true;}) #If you have limited RAM, it is recommended to disable this setting.
      kdePackages.kdenlive
      protonmail-desktop
      krita
      wget
      mpv
      curl
      yazi
      kitty
      lazygit
      btop
      git
      gcc
    ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
  ];

}
