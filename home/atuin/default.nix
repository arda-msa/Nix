{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/atuin/config";
in

{
  home.packages = with pkgs; [
    atuin
  ];

  xdg.configFile."atuin" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
