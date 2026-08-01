{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gitlogue
    glow
    jq
    wiremix

    libreoffice
    hunspellDicts.en_US
    hunspellDicts.tr_TR

    ffmpeg
    gimp
    imagemagick
    yt-dlp
  ];
}
