{ ... }:

{
  imports = [
    ./desktop-entries.nix
    ./dotfiles.nix
  ];

  home = {
    username = "arda";
    homeDirectory = "/home/arda";
    stateVersion = "25.11";
  };

  home.preferXdgDirectories = true;

  programs.home-manager.enable = true;
}
