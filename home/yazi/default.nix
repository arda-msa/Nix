{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/home/yazi/config";
in

{
  home.packages = with pkgs; [
    exiftool
    jq
    p7zip
    sshfs
    yazi
  ];

  xdg.configFile."yazi" = {
    source = symlink dotfiles;
    recursive = true;
  };
}
