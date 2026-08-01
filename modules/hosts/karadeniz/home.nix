{ self, ... }:

{
  flake.modules.homeManager.karadeniz = { ... }: {
    home = {
      username = "arda";
      homeDirectory = "/home/arda";
      stateVersion = "26.05";
    };

    imports = with self.modules.homeManager; [
      packages
      xdg
      btop
      ghostty
      git
      lazygit
      mpv
      neovim
      nh
      yazi
      fish
      tools
    ];
  };
}
