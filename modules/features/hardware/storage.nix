{
  flake.modules.nixos.storage = {
    services.gvfs.enable = true;
    services.udisks2.enable = true;
  };
}
