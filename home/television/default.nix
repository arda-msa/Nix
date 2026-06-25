{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/television/config";
in

{
  home.packages = with pkgs; [
    television
  ];

  xdg.configFile."television" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
