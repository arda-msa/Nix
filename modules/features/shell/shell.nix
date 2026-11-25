{ self, ... }:

{
  flake.modules.nixos.shell = { pkgs, ... }: {
    imports = with self.modules.nixos; [
      bash
      fish
    ];

    users.defaultUserShell = pkgs.fish;
  };

  flake.modules.homeManager.shell = {
    imports = with self.modules.homeManager; [
      bash
      fish
    ];

    home.shell = {
      enableShellIntegration = false;
      enableBashIntegration = true;
      enableFishIntegration = true;
    };
  };
}
