{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/mako/config";
in

{
  home.packages = with pkgs; [
    mako
  ];

  xdg.configFile."mako" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
