{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/fish/config";
in

{
  home.packages = with pkgs; [
    bat
    eza
    fd
    fzf
    ripgrep
    tree
    zoxide
  ];

  xdg.configFile."fish" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
