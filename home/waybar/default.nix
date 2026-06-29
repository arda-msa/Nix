{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/config/waybar";
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
