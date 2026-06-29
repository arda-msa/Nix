{ ... }:

{
  programs.fuzzel = {
    enable = true;

    settings = {
      main = {
        font = "JetBrainsMono Nerd Font:size=16";
        dpi-aware = false;
        placeholder = "Search...";
        prompt = "❯ ";
        icons-enabled = true;
        match-mode = "fzf";
        sort-result = true;
        show-actions = false;
        terminal = "ghostty -e";
        anchor = "center";
        lines = 12;
        width = 40;
        horizontal-pad = 16;
        vertical-pad = 8;
        inner-pad = 6;
        layer = "overlay";
      };

      colors = {
        background = "1e1e2edd";
        text = "cdd6f4ff";
        prompt = "bac2deff";
        placeholder = "7f849cff";
        input = "cdd6f4ff";
        match = "89b4faff";
        selection = "585b70ff";
        selection-text = "cdd6f4ff";
        selection-match = "89b4faff";
        counter = "7f849cff";
        border = "89b4faff";
      };

      border = {
        width = 1;
        radius = 4;
        selection-radius = 4;
      };
    };
  };
}
