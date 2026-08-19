{
  flake.modules.homeManager.graphical = {
    programs.ghostty = {
      enable = true;
      enableFishIntegration = true;

      settings = {
        shell-integration-features = "ssh-env";
      };
    };

    stylix.targets.ghostty.enable = true;
  };
}
