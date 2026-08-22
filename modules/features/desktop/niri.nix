{
  flake.modules.nixos.niri = {
    programs.niri = {
      enable = true;
      useNautilus = false;
    };
  };

  flake.modules.homeManager.niri = { config, ... }: {
    wayland.windowManager.niri.enable = true;

    xdg.configFile."niri" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Foundry/config/niri";
      recursive = true;
    };
  };
}
