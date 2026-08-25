{ inputs, ... }:

{
  flake.modules.nixos.stylix = { config, pkgs, ... }: {
    imports = [
      inputs.stylix.nixosModules.stylix
    ];

    stylix = {
      enable = true;
      autoEnable = false;
      base16Scheme = "${pkgs.base16-schemes}/share/themes/catppuccin-mocha.yaml";
      polarity = "dark";

      fonts.sansSerif = {
        package = pkgs.adwaita-fonts;
        name = "Adwaita Sans";
      };

      fonts.serif = config.stylix.fonts.sansSerif;

      fonts.monospace = {
        package = pkgs.nerd-fonts.jetbrains-mono;
        name = "JetBrainsMono Nerd Font";
      };

      opacity.terminal = 0.9;
    };
  };
}
