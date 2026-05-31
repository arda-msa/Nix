{ ... }:

{
  imports = [
    ./desktop-entries.nix
    ./dotfiles.nix
  ];

  home = {
    username = "arda";
    homeDirectory = "/home/arda";
    stateVersion = "26.05";
  };

  home.preferXdgDirectories = true;

  xdg.enable = true;

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };

  programs.home-manager.enable = true;
}
