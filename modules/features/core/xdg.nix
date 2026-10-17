{
  flake.modules.homeManager.xdg = {
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
