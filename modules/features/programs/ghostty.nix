{
  flake.modules.homeManager.ghostty = {
    programs.ghostty = {
      enable = true;

      settings = {
        shell-integration-features = "ssh-env";
      };
    };
  };
}
