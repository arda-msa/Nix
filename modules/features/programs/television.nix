{
  flake.modules.homeManager.base = {
    programs.television = {
      enable = true;
      enableFishIntegration = true;
    };
  };
}
