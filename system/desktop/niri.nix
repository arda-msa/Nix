{ ... }:

{
  programs.niri = {
    enable = true;
    useNautilus = false;
  };

  # Some of the modules enabled by having `programs.niri.enable = true`:
  #
  #   services.gnome.gnome-keyring.enable = true;
  #   xdg.portal.enable = true;
  #   security.polkit.enable = true;
  #   programs.dconf.enable = true;
  #   security.pam.services.swaylock = { };
  #   envorinment.systemPackages = with pkgs; [ nixos-icons xdg-utils ]:
  #   fonts.enableDefaultPackages = true;
  #   services.speechd.enable = true;
  #   xdg = { autostart.enable = true; menus.enable = true; mime.enable = true; icons.enable = true; };
}
