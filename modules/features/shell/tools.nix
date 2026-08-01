{
  flake.modules.homeManager.base = { pkgs, ... }: {
    home.packages = with pkgs; [
      bat
      fd
      fzf
      ripgrep
      tree
    ];

    home.sessionVariables = {
      MANPAGER = "sh -c 'col -bx | bat -l man -p'";
      MANROFFOPT = "-c";
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

    programs.zoxide = {
      enable = true;
      enableFishIntegration = true;
    };
  };
}
