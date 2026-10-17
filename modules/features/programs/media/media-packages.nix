{
  flake.modules.homeManager.media-packages = { pkgs, ... }: {
    home.packages = with pkgs; [
      ffmpeg
      gifski
      gimp-with-plugins
      handbrake
      imagemagick
      kdePackages.kdenlive
      losslesscut
      snapshot
    ];
  };
}
