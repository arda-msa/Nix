{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    fd
    ripgrep
    tree
  ];

  programs.fish = {
    enable = true;

    # TODO: Move these variables to home.sessionVariables
    shellInit = ''
      set -gx EDITOR nvim
      set -gx VISUAL nvim
      # set -gx MANPAGER "nvim +Man!"
      set -gx MANPAGER "sh -c 'col -bx | bat -l man -p'"
      set -gx MANROFFOPT -c
    '';

    interactiveShellInit = ''
      # Disable greeting
      set fish_greeting

      # TODO: initialize these programs in their own modules
      nix-your-shell fish | source
      starship init fish | source
      atuin init fish | source
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

      # TODO: Enable the yazi shell wrapper in the yazi module.
      y = {
        description = "Yazi shell wrapper for changing directory";
        body = ''
          set tmp (mktemp -t "yazi-cwd.XXXXXX")
          command yazi $argv --cwd-file="$tmp"
          if read -z cwd <"$tmp"; and [ "$cwd" != "$PWD" ]; and test -d "$cwd"
              builtin cd -- "$cwd"
          end
          rm -f -- "$tmp"
        '';
      };
    };

    shellAliases = {
      "..." = "cd ../..";
      "gr" = "cd (git rev-parse --show-toplevel)";
      "grep" = "grep --color=auto";
      "vim" = "nvim";
      "ltree" = ''tree -a -F -I ".git" -L 4 --dirsfirst'';
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

    fileWidgetCommand = "fd --hidden --follow --exclude .git --strip-cwd-prefix";
    fileWidgetOptions = [
      "--preview 'if test -d {}; tree -C {} | head -50; else; bat --color=always --style=numbers --line-range=:500 {}; end'"
      "--bind 'alt-p:change-preview-window(down|hidden|)'"
    ];

    changeDirWidgetCommand = "fd --type d --hidden --follow --exclude .git --strip-cwd-prefix";
    changeDirWidgetOptions = [
      "--preview 'tree -C {} | head -50'"
    ];

    historyWidgetOptions = [
      "--with-nth 2.."
      "--bind 'alt-t:change-with-nth(2..|1..)'"
    ];
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
