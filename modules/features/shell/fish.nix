{ ... }:

{
  flake.modules.homeManager.fish = { pkgs, ... }: {
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
  };
}
