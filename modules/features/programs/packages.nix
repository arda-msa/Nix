{
  flake.modules.homeManager.base = { pkgs, ... }: {
    home.packages = with pkgs; [
      fd
      gitlogue
      glow
      jq
      ripgrep
      tree
      wiremix

      libreoffice
      hunspellDicts.en_US
      hunspellDicts.tr_TR

      ffmpeg
      gimp
      imagemagick
      yt-dlp
    ];
  };
}
