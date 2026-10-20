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
}
