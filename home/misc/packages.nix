{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # GUI
    foliate
    loupe
    nautilus
    obsidian
    snapshot

    # Libre Office
    libreoffice
    hunspellDicts.en_US
    hunspellDicts.tr_TR

    # CLI
    bluetui
    brightnessctl
    cava
    ffmpegthumbnailer
    glow
    imagemagick
    jq
    libnotify
    playerctl
    unzip
    wiremix
    wl-clipboard
    xdg-utils

    # Appearance
    adw-gtk3
    morewaita-icon-theme
    bibata-cursors
    nwg-look

    # Fun
    cbonsai
    cmatrix
    gitlogue
    mapscii
  ];
}
