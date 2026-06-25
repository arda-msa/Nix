{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/fastfetch/config";
in

{
  home.packages = with pkgs; [
    fastfetch
  ];

  xdg.configFile."fastfetch" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
