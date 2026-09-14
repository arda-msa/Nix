{
  flake.modules.homeManager.graphical = { pkgs, ... }: {
    home.packages = with pkgs; [
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
