{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/lazygit/config";
in

{
  home.packages = with pkgs; [
    lazygit
  ];

  xdg.configFile."lazygit" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
