{
  flake.modules.homeManager.delta = {
    programs.delta = {
      enable = true;
      enableGitIntegration = false;

      options = {
        line-numbers = true;
        navigate = true;
        side-by-side = true;
      };
    };
  };
}
