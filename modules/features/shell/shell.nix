{
  flake.modules.nixos.base = { pkgs, ... }: {
    users.defaultUserShell = pkgs.fish;
  };

  flake.modules.homeManager.base = {
    home.shell.enableShellIntegration = false;
  };
}
