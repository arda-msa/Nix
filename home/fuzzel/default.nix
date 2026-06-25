{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/fuzzel/config";
in

{
  home.packages = with pkgs; [
    fuzzel
  ];

  xdg.configFile."fuzzel" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
