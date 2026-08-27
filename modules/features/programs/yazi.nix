{
  flake.modules.homeManager.base = { pkgs, ... }: {
    home.packages = with pkgs; [
      exiftool
    ];

    programs.yazi = {
      enable = true;
      enableFishIntegration = true;

      settings = {
        mgr = {
          sort_by = "natural";
          sort_sensitive = false;
          sort_dir_first = true;
          linemode = "none";
          show_hidden = false;
          show_symlink = true;
        };

        preview = {
          wrap = "no";
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
        mgr.prepend_keymap = [
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
            run = "cd ~/Notes";
            desc = "Go to ~/Notes";
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
              "v"
            ];
            run = "cd ~/Videos";
            desc = "Go to ~/Videos";
          }
          {
            on = [
              "g"
              "w"
            ];
            run = "cd ~/Documents/Work";
            desc = "Go to ~/Documents/Work";
          }
          {
            on = [
              "g"
              "x"
            ];
            run = "cd ~/Nix";
            desc = "Go to ~/Nix";
          }
        ];
      };
    };

    stylix.targets.yazi.enable = true;
  };
}
