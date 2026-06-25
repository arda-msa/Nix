{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/btop/config";
in

{
  home.packages = with pkgs; [
    btop
  ];

  xdg.configFile."btop" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
