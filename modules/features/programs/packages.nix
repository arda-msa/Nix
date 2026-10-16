{
  flake.modules.homeManager.base = { pkgs, ... }: {
    home.packages = with pkgs; [
      gitlogue
      glow
      qbittorrent
      tree
      wl-clipboard
    ];
  };
}
