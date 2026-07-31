{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gitlogue
    glow
    jq
    wiremix

    ffmpeg
    gimp
    imagemagick
    yt-dlp
  ];
}
