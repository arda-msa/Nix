{ pkgs, ... }:

{
  programs.mpv = {
    enable = true;

    scripts = with pkgs.mpvScripts; [
      uosc
      thumbfast
    ];

    config = {
      # Video
      vo = "gpu-next";
      gpu-api = "auto";
      hwdec = "vaapi";

      # Subtitles
      sub-auto = "fuzzy";
      sub-font-size = 40;

      # Quality of Life
      keep-open = "yes";
      save-position-on-quit = "yes";
      autofit-larger = "90%x90%";

      # Required for uosc
      osd-bar = false;
      border = false;
    };
  };
}
