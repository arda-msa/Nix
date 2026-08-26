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

      fonts = {
        sansSerif = {
          package = pkgs.adwaita-fonts;
          name = "Adwaita Sans";
        };

        serif = config.stylix.fonts.sansSerif;

        monospace = {
          package = pkgs.nerd-fonts.jetbrains-mono;
          name = "JetBrainsMono Nerd Font";
        };

        sizes = {
          # applications = 12;
          # desktop = 10;
          # popups = config.stylix.fonts.sizes.desktop;
          # terminal = config.stylix.fonts.sizes.applications;
        };
      };

      icons = {
        enable = true;
        package = pkgs.morewaita-icon-theme;
        light = "MoreWaita";
        dark = "MoreWaita";
      };

      cursor = {
        package = pkgs.adwaita-icon-theme;
        name = "Adwaita";
        size = 24;
      };

      opacity = {
        # applications = 1.0;
        # desktop = 1.0;
        # popups = 1.0;
        terminal = 0.9;
      };
    };
  };
}
