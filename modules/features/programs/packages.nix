{
  flake.modules.homeManager.packages = { pkgs, ... }: {
    home.packages = with pkgs; [
      gitlogue
      glow
      tree
      wl-clipboard
    ];
  };
}
