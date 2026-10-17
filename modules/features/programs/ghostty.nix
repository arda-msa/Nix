{
  flake.modules.homeManager.ghostty = {
    programs.ghostty = {
      enable = true;
      enableFishIntegration = true;

      settings = {
        shell-integration-features = "ssh-env";
      };
    };
  };

  flake.modules.homeManager.stylix = {
    stylix.targets.ghostty.enable = true;
  };
}
