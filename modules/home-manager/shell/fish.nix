{ pkgs, ... }:

{
  home.packages = with pkgs; [
    bat
    fd
    ripgrep
    tree
  ];

  home.sessionVariables = {
    MANPAGER = "sh -c 'col -bx | bat -l man -p'";
    MANROFFOPT = "-c";
  };

  home.shellAliases = {
    "..." = "cd ../..";
    "grep" = "grep --color=auto";
    "vim" = "nvim";
    "ltree" = ''tree -a -F -I ".git" -L 4 --dirsfirst'';
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
}
