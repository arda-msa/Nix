{ self, ... }:

{
  flake.modules.nixos.niri = {
    programs.niri = {
      enable = true;
      useNautilus = false;
    };
  };

  flake.modules.homeManager.niri = { config, ... }: {
    imports = with self.modules.homeManager; [
      noctalia
    ];

    wayland.windowManager.niri.enable = true;

    xdg.configFile."niri" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Nix/config/niri";
      recursive = true;
    };
  };
}
