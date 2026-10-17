{ self, ... }:

{
  flake.modules.nixos.shell = { pkgs, ... }: {
    imports = with self.modules.nixos; [
      fish
    ];

    users.defaultUserShell = pkgs.fish;
  };

  flake.modules.homeManager.shell = {
    imports = with self.modules.homeManager; [
      fish
    ];

    home.shell.enableShellIntegration = false;
  };
}
