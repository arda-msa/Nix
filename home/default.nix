{ pkgs, ... }:

{
  imports = [
    ./cli
    ./desktop
    ./gui
    ./tui
  ];

  home.packages = with pkgs; [
    # GUI
    foliate
    loupe
    nautilus
    obsidian
    snapshot

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

  home.preferXdgDirectories = true;

  xdg.enable = true;

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };

  xdg.desktopEntries = {
    bluetui = {
      name = "Bluetui";
      genericName = "Bluetooth Manager";
      comment = "Manage bluetooth settings";
      icon = "bluetooth";
      type = "Application";
      terminal = true;
      exec = "bluetui";
      categories = [ "Utility" ];
    };

    wiremix = {
      name = "Wiremix";
      genericName = "Audio Mixer";
      comment = "Manage audio settings";
      icon = "audio";
      type = "Application";
      terminal = true;
      exec = "wiremix";
      categories = [ "Utility" ];
    };
  };

  xdg.terminal-exec = {
    enable = true;
    settings = {
      default = [ "com.mitchellh.ghostty.desktop" ];
    };
  };
}
