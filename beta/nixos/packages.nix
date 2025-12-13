{ config, lib, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
      #for amd
      microcode-amd
      mesa
      vulkan-tools
      amdvlk

      #programs
      aseprite
      firefox
      foliate
      spotify
      obsidian
      darktable
      video-downloader
      libreoffice
      qbittorrent
      telegram-desktop
      bitwarden-desktop
      gearlever
      easyeffects
      krita
      discord
      inkscape
      localsend
      audacity
      reaper
      mpv
      blender
      kdePackages.kdenlive

      #others
      home-manager
      fastfetch
      ranger
      wget
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
