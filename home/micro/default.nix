{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/micro/config";
in

{
  home.packages = with pkgs; [
    micro
  ];

  xdg.configFile."micro" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
