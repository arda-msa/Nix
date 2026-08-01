{ ... }:

{
  flake.modules.homeManager.mpv = { pkgs, ... }: {
    programs.mpv = {
      enable = true;

      scripts = with pkgs.mpvScripts; [
        uosc
        thumbfast
        mpris
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

        # Required for uosc
        osd-bar = false;
        border = false;

        # Screenshots
        screenshot-format = "png";
        screenshot-png-compression = 7;
        screenshot-directory = "~/Pictures/mpv-screenshots";
        screenshot-template = "%F-%n";
      };
    };
  };
}
