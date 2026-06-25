{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/waybar/config";
in

{
  home.packages = with pkgs; [
    waybar
  ];

  xdg.configFile."waybar" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
