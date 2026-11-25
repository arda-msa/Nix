{ inputs, ... }:

{
  flake.modules.nixos.desktop = {
    nix.settings = {
      extra-substituters = [ "https://noctalia.cachix.org" ];
      extra-trusted-public-keys = [
        "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
      ];
    };
  };

  flake.modules.homeManager.desktop = {
    imports = [ inputs.luciole.homeModules.default ];

    programs.luciole.enable = true;
  };
}
