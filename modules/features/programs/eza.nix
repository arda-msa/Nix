{
  flake.modules.homeManager.eza = {
    programs.eza = {
      enable = true;
      enableFishIntegration = true;

      colors = "always";
      icons = "always";
      extraOptions = [ "--group-directories-first" ];
    };
  };
}
