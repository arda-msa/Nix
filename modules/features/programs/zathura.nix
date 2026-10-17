{
  flake.modules.homeManager.zathura = {
    programs.zathura = {
      enable = true;
    };
  };

  flake.modules.homeManager.stylix = {
    stylix.targets.zathura.enable = true;
  };
}
