{ pkgs, ... }:

{
  imports = [
    ./atuin
    ./btop
    ./fish
    ./fuzzel
    ./ghostty
    ./git
    ./lazygit
    ./mako
    ./micro
    ./mpv
    ./neovim
    ./niri
    ./starship
    ./swaylock
    ./television
    ./waybar
    ./yazi
  ];

  home.packages = with pkgs; [
    glow
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
