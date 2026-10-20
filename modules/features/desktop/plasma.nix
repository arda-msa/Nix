{
  flake.modules.nixos.plasma = {
    services.desktopManager.plasma6.enable = true;

    programs.kde-pim.enable = false;
  };
}
