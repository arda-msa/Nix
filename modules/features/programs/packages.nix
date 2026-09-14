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
      gimp-with-plugins
      handbrake
      imagemagick
      kdePackages.kdenlive
      losslesscut
    ];
  };
}
