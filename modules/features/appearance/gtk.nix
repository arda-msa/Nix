{
  flake.modules.homeManager.gtk = {
    gtk.enable = true;
  };

  flake.modules.homeManager.stylix = {
    stylix.targets.gtk = {
      enable = true;
      flatpakSupport.enable = true;
    };
  };
}
