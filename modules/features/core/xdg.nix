{
  flake.modules.homeManager.base = {
    home.preferXdgDirectories = true;

    xdg.enable = true;

    xdg.terminal-exec = {
      enable = true;
      settings = {
        default = [ "kitty.desktop" ];
      };
    };
  };
}
