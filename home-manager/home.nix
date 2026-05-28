{ pkgs, ... }:

{
  imports = [
    ./dotfiles.nix
  ];

  home.username = "arda";
  home.homeDirectory = "/home/arda";
  home.stateVersion = "25.11";

  home.preferXdgDirectories = true;

  programs.home-manager.enable = true;
}
