{
  flake.modules.homeManager.lazygit = {
    programs.lazygit = {
      enable = true;
      enableFishIntegration = true;

      settings = {
        gui = {
          nerdFontsVersion = "3";
          showFileIcons = true;
        };
      };
    };
  };

  flake.modules.homeManager.stylix = {
    stylix.targets.lazygit.enable = true;
  };
}
