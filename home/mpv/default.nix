{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/mpv/config";
in

{
  home.packages = with pkgs; [
    mpv
  ];

  xdg.configFile."mpv" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
