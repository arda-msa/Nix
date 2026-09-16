{ inputs, ... }:

{
  flake.modules.homeManager.graphical = {
    imports = [
      inputs.zen-browser.homeModules.beta
    ];

    programs.zen-browser = {
      enable = true;
      setAsDefaultBrowser = false;

      profiles.default = {
        isDefault = true;
      };
    };

    stylix.targets.zen-browser = {
      enable = true;
      profileNames = [ "default" ];
    };
  };
}
