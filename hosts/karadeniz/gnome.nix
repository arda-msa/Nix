{ lib, pkgs, ... }:

{

  services.desktopManager.gnome.enable = true;
  services.displayManager.gdm.enable = true;

  services.gnome.core-apps.enable = false;
  services.gnome.evolution-data-server.enable = lib.mkForce false;
  environment.gnome.excludePackages = [ pkgs.gnome-tour ];

  environment.systemPackages = with pkgs; [
    celluloid
    dconf-editor
    gnome-calculator
    gnome-extension-manager
    gnome-tweaks
    loupe
    nautilus
    snapshot
  ];

  xdg.terminal-exec = {
    enable = true;
    settings.GNOME = [ "ghostty.desktop" ];
  };
}
