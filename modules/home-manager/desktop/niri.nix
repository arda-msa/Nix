{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/config/niri";
in

{
  home.packages = with pkgs; [
    swaybg
    xwayland-satellite
  ];

  xdg.configFile."niri" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
