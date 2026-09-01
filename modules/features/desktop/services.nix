{
  flake.modules.nixos.graphical = {
    services.gvfs.enable = true;
    services.power-profiles-daemon.enable = true;
    services.udisks2.enable = true;
    services.upower.enable = true;
  };
}
