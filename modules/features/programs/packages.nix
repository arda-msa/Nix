{
  flake.modules.homeManager.base = { pkgs, ... }: {
    home.packages = with pkgs; [
      gitlogue
      glow
      tree
      wiremix
      wl-clipboard
    ];
  };
}
