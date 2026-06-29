{ ... }:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      cmd_duration = {
        format = "[$duration]($style) ";
      };

      directory = {
        truncation_length = 8;
      };
    };
  };
}
