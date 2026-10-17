{
  flake.modules.homeManager.distrobox = { pkgs, ... }: {
    home.packages = [
      pkgs.distroshelf
    ];

    programs.distrobox.enable = true;
  };
}
