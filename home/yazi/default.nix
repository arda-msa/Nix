{ pkgs, ... }:

let
  separators = {
    open = "";
    close = "";
  };
in

{
  programs.yazi = {
    enable = true;
    enableFishIntegration = false;

    settings = {
      mgr = {
        sort_by = "alphabetical";
        sort_sensitive = false;
        sort_dir_first = true;
        linemode = "none";
        show_hidden = true;
        show_symlink = true;
      };

      preview = {
        wrap = "no";
      };
    };

    theme = {
      status = {
        sep_left = separators;
        sep_right = separators;
      };

      tabs = {
        sep_outer = separators;
        sep_inner = separators;
      };

      indicator = {
        padding = separators;
      };
    };

    plugins = {
      full-border = pkgs.yaziPlugins.full-border;
      lazygit = pkgs.yaziPlugins.lazygit;
      open-git-remote = pkgs.fetchFromGitHub {
        owner = "larry-oates";
        repo = "open-git-remote.yazi";
        rev = "72158d607c01b63bc4eb5ac6fc0dc0691b41ce8c";
        hash = "sha256-DGiGn5NveIGU0BikQ9U3vPL2R/qo1VA9ZfElOwl6qPk=";
      };
      starship = pkgs.yaziPlugins.starship;
    };

    initLua = ''
      require("full-border"):setup()
      require("starship"):setup()
    '';

    keymap = {
      # `gc`, `gd`, `gf`, `gg` and `gh` binds have been added to maintain an
      # alphabetical order in the keybind popup, even though they are defaults.
      mgr.prepend_keymap = [
        {
          on = [
            "g"
            "c"
          ];
          run = "cd ~/.config";
          desc = "Go to ~/.config";
        }
        {
          on = [
            "g"
            "d"
          ];
          run = "cd ~/Downloads";
          desc = "Go to ~/Downloads";
        }
        {
          on = [
            "g"
            "f"
          ];
          run = "follow";
          desc = "Follow hovered link";
        }
        {
          on = [
            "g"
            "g"
          ];
          run = "arrow top";
          desc = "Go to top";
        }
        {
          on = [
            "g"
            "h"
          ];
          run = "cd ~";
          desc = "Go to home";
        }
        {
          on = [
            "g"
            "i"
          ];
          run = "plugin lazygit";
          desc = "Run lazygit";
        }
        {
          on = [
            "g"
            "n"
          ];
          run = "cd ~/notes";
          desc = "Go to ~/notes";
        }
        {
          on = [
            "g"
            "o"
          ];
          run = "plugin open-git-remote";
          desc = "Open git remote in browser";
        }
        {
          on = [
            "g"
            "p"
          ];
          run = "cd ~/Projects";
          desc = "Go to ~/Projects";
        }
        {
          on = [
            "g"
            "r"
          ];
          run = ''shell -- ya emit cd "$(git rev-parse --show-toplevel)"'';
          desc = "Go to git repo root";
        }
        {
          on = [
            "g"
            "x"
          ];
          run = "cd ~/nixos";
          desc = "Go to ~/nixos";
        }
      ];
    };
  };
}
