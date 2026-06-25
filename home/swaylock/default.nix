{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/swaylock/config";
in

{
  home.packages = with pkgs; [
    swaylock
  ];

  xdg.configFile."swaylock" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
