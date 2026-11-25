{
  flake.modules.homeManager.eza = {
    programs.eza = {
      enable = true;

      colors = "always";
      icons = "always";
      extraOptions = [ "--group-directories-first" ];
    };
  };
}
