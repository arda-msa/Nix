{ pkgs, ... }:

{
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  # Use GTK file picker over Nautilus
  xdg.portal.config.gnome."org.freedesktop.impl.portal.FileChooser" = [ "gtk" ];

  environment.systemPackages = with pkgs; [
    dconf-editor
    gnome-extension-manager
    gnome-tweaks
  ];
}
