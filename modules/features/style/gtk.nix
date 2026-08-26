{
  flake.modules.homeManager.base = {
    gtk.enable = true;

    stylix.targets.gtk = {
      enable = true;
      flatpakSupport.enable = true;
    };
  };
}
