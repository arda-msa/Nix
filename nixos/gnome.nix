{ pkgs, ... }:

{
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  services.gnome.core-apps.enable = false;
  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
  ];

  # Use GTK file picker over Nautilus
  xdg.portal.config.gnome."org.freedesktop.impl.portal.FileChooser" = [ "gtk" ];

  environment.systemPackages = with pkgs; [
    dconf-editor
    ffmpegthumbnailer
    gnome-extension-manager
    gnome-tweaks
    loupe
    nautilus
  ];

  xdg.terminal-exec = {
    enable = true;
    settings = {
      GNOME = [ "com.mitchellh.ghostty.desktop" ];
      default = [ "com.mitchellh.ghostty.desktop" ];
    };
  };
}
