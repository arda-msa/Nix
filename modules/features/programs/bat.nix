{
  flake.modules.homeManager.bat = { pkgs, ... }: {
    programs.bat = {
      enable = true;

      config = {
        color = "always";
      };

      extraPackages = with pkgs.bat-extras; [
        batman
      ];
    };
  };

  flake.modules.homeManager.stylix = {
    stylix.targets.bat.enable = true;
  };
}
