{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/ghostty/config";
in

{
  home.packages = with pkgs; [
    ghostty
  ];

  xdg.configFile."ghostty" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
