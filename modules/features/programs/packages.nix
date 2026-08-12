{
  flake.modules.homeManager.base = { pkgs, ... }: {
    home.packages = with pkgs; [
      gitlogue
      glow
      jq
      ripgrep
      tree
      wiremix

      ffmpeg
      imagemagick
      yt-dlp
    ];
  };

  flake.modules.homeManager.graphical = { pkgs, ... }: {
    home.packages = with pkgs; [
      libreoffice
      hunspellDicts.en_US
      hunspellDicts.tr_TR

      gimp
    ];
  };
}
