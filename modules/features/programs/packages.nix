{
  flake.modules.homeManager.base = { pkgs, ... }: {
    home.packages = with pkgs; [
      gitlogue
      glow
      jq
      tree
      wiremix
      wl-clipboard

      ffmpeg
      gifski
      handbrake
      imagemagick
      kdePackages.kdenlive
      losslesscut
    ];
  };
}
