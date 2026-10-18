{
  flake.modules.nixos.hyprland = {
    programs.hyprland.enable = true;
  };

  flake.modules.homeManager.hyprland = { config, pkgs, ... }: {
    # wayland.windowManager.hyprland.enable = true;

    xdg.configFile."hypr".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Nix/config/hypr";

    xdg.dataFile."hypr-stubs".source = "${pkgs.hyprland}/share/hypr/stubs";
  };
}
