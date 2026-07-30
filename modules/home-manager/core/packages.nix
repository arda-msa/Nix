{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gitlogue
    wiremix

    ffmpeg
    yt-dlp
    gimp
  ];
}
