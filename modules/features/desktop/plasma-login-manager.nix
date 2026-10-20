{
  flake.modules.nixos.plasma-login-manager = {
    services.displayManager.plasma-login-manager.enable = true;
    services.displayManager.defaultSession = "plasma";
  };
}
