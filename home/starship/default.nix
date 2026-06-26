{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/starship/config";
in

{
  home.packages = with pkgs; [
    starship
  ];

  xdg.configFile."starship.toml" = {
    source = symlink "${dotfiles}/starship.toml";
    recursive = true;
  };
}
