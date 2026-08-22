{ inputs, ... }:

{
  flake.modules.homeManager.noctalia = { pkgs, ... }: {
    imports = [
      inputs.noctalia.homeModules.default
    ];

    programs.noctalia = {
      enable = true;
      package = pkgs.noctalia;
      systemd.enable = true;
    };

    stylix.targets.noctalia.enable = true;
  };
}
