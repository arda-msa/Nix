{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/git/config";
in

{
  home.packages = with pkgs; [
    delta
    git
  ];

  xdg.configFile."git" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
