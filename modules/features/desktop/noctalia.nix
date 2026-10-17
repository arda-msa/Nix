{
  flake.modules.homeManager.noctalia = {
    programs.noctalia = {
      enable = true;
      systemd.enable = true;
    };
  };

  flake.modules.homeManager.stylix = {
    stylix.targets.noctalia.enable = true;
  };
}
