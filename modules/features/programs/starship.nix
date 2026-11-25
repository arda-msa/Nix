{
  flake.modules.homeManager.starship = {
    programs.starship = {
      enable = true;

      presets = [ "nerd-font-symbols" ];

      settings = {
        cmd_duration = {
          disabled = false;
          format = "[$duration]($style) ";
        };

        directory = {
          disabled = false;
          truncation_length = 8;
        };

        shell = {
          disabled = false;
          format = "[$indicator]($style)";
          bash_indicator = "bash ";
          fish_indicator = "";
        };

        shlvl = {
          disabled = false;
          threshold = 3;
          format = "[$symbol$shlvl]($style) ";
        };
      };
    };
  };
}
