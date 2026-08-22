{
  flake.modules.homeManager.graphical = { pkgs, ... }: {
    programs.mpv = {
      enable = true;

      scripts = with pkgs.mpvScripts; [
        uosc
        thumbfast
        mpris
      ];

      config = {
        # Video
        gpu-api = "auto";
        hwdec = "vaapi";
        vo = "gpu-next";

        # Subtitles
        sub-auto = "fuzzy";
        sub-font-size = 40;

        # Window
        autofit-larger = "90%x90%";

        # Quality of Life
        keep-open = "yes";
        save-position-on-quit = "no";

        # Required for uosc
        osd-bar = false;
        border = false;

        # Screenshots
        screenshot-format = "png";
        screenshot-png-compression = 7;
        screenshot-directory = "~/Pictures/MPV-Screenshots";
        screenshot-template = "%F-%n";
      };
    };

    stylix.targets.mpv.enable = true;
  };
}
