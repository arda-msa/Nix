{
  flake.modules.homeManager.base = {
    programs.starship = {
      enable = true;
      enableFishIntegration = true;

      presets = [ "nerd-font-symbols" ];

      settings = {
        cmd_duration = {
          format = "[$duration]($style) ";
        };

        directory = {
          truncation_length = 8;
        };
      };
    };
  };
}
