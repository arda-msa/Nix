{ inputs, ... }:

{
  flake.modules.homeManager.graphical = {
    imports = [
      inputs.spicetify-nix.homeManagerModules.default
    ];

    programs.spicetify.enable = true;

    stylix.targets.spicetify.enable = true;
  };
}
