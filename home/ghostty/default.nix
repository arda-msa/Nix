{ ... }:

{
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      background-opacity = 0.9;
      font-size = 12;
      shell-integration-features = "ssh-env";
      theme = "Catppuccin Mocha";
    };
  };
}
