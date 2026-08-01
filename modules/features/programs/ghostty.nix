{
  flake.modules.homeManager.ghostty = {
    programs.ghostty = {
      enable = true;
      enableFishIntegration = true;

      settings = {
        background-opacity = 0.9;
        shell-integration-features = "ssh-env";
        theme = "Catppuccin Mocha";
      };
    };
  };
}
