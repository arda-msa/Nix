{ config, pkgs, ... }:

{
  home.username = "arda";
  home.homeDirectory = "/home/arda";
  home.stateVersion = "26.05";

  home.preferXdgDirectories = true;

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    bat
    exiftool
    fd
    fzf
    gcc
    lazygit
    lua-language-server
    neovim
    nix-output-monitor
    nixd
    nixfmt
    nvd
    ripgrep
    stylua
    tree
    tree-sitter
    wiremix
  ];

  xdg.configFile."nvim" = {
    source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos/config/nvim";
    recursive = true;
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    # MANPAGER = "nvim +Man!";
    MANPAGER = "sh -c 'col -bx | bat -l man -p'";
    MANROFFOPT = "-c";
  };

  programs.btop = {
    enable = true;
    settings = {
      theme_background = false;
      save_config_on_exit = false;
      vim_keys = true;
    };
  };

  programs.eza = {
    enable = true;
    enableFishIntegration = true;

    colors = "always";
    icons = "always";
    extraOptions = [ "--group-directories-first" ];
  };

  programs.fzf = {
    enable = true;
    enableFishIntegration = true;

    defaultCommand = "fd --type f --hidden --follow --exclude .git --strip-cwd-prefix";
    defaultOptions = [
      "--layout=reverse"
      "--border=rounded"
      "--scheme=path"
    ];

    fileWidget.command = "fd --hidden --follow --exclude .git --strip-cwd-prefix";
    fileWidget.options = [
      "--preview 'if test -d {}; tree -C {} | head -50; else; bat --color=always --style=numbers --line-range=:500 {}; end'"
      "--bind 'alt-p:change-preview-window(down|hidden|)'"
    ];

    changeDirWidget.command = "fd --type d --hidden --follow --exclude .git --strip-cwd-prefix";
    changeDirWidget.options = [
      "--preview 'tree -C {} | head -50'"
    ];

    historyWidget.options = [
      "--with-nth 2.."
      "--bind 'alt-t:change-with-nth(2..|1..)'"
    ];
  };

  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      # Disable greeting
      set fish_greeting
    '';

    plugins = [
      {
        name = "autopair";
        src = pkgs.fishPlugins.autopair.src;
      }
      {
        name = "done";
        src = pkgs.fishPlugins.done.src;
      }
    ];

    functions = {
      backup = {
        argumentNames = "filename";
        body = "cp $filename $filename.bak";
      };

      gr = {
        description = "Go to the root of the current git repository";
        body = "cd (git rev-parse --show-toplevel)";
      };
    };
  };

  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      background-opacity = 0.9;
      shell-integration-features = "ssh-env";
      theme = "Catppuccin Mocha";
    };
  };

  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "arda-msa";
        email = "arda.msa.dev@gmail.com";
      };
      init.defaultBranch = "main";
      core.pager = "delta";
      interactive.diffFilter = "delta --color-only";
      merge.conflictstyle = "zdiff3";
    };
  };

  programs.delta = {
    enable = true;
    enableGitIntegration = false;

    options = {
      line-numbers = true;
      navigate = true;
      side-by-side = true;
    };
  };

  programs.lazygit = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      gui = {
        nerdFontsVersion = "3";
        showFileIcons = true;
      };
    };
  };

  programs.nh = {
    enable = true;
    flake = "${config.home.homeDirectory}/nixos";
  };

  programs.nix-search-tv = {
    enable = true;
    enableTelevisionIntegration = true;

    settings = {
      indexes = [
        "nixpkgs"
        "nixos"
        "home-manager"
        "noogle"
      ];
    };
  };

  programs.nix-your-shell = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    presets = [ "nerd-font-symbols" ];

    settings = {
      cmd_duration = {
        format = "[$duration]($style) ";
      };

      directory = {
        truncation_length = 8;
      };
    };
  };

  programs.television = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.yazi = {
    enable = true;
    enableFishIntegration = true;

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
            "w"
          ];
          run = "cd ~/work";
          desc = "Go to ~/work";
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

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
