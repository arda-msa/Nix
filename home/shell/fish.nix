{ pkgs, ... }:

{
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
  };
}
