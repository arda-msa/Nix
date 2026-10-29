{ inputs, ... }:

{
  flake.modules.nixos.hyprland = { pkgs, ... }: {
    nix.settings = {
      extra-substituters = [ "https://hyprland.cachix.org" ];
      extra-trusted-public-keys = [
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      ];
    };

    programs.hyprland = {
      enable = true;
      package = inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
      portalPackage =
        inputs.hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
    };
  };

  flake.modules.homeManager.hyprland = { config, pkgs, ... }: {
    # wayland.windowManager.hyprland.enable = true;

    xdg.configFile."hypr".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Nix/config/hypr";

    xdg.dataFile."hypr-stubs".source = "${pkgs.hyprland}/share/hypr/stubs";
  };
}
