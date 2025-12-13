{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
      aseprite
      firefox
      foliate
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
      blender
      home-manager
      kdePackages.kdenlive
      protonmail-desktop
      ranger
      krita
      wget
      mpv
      lazygit
      btop
      git
      jdk
      tree
      cava
      yt-dlp
    ];

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
  ];

}
