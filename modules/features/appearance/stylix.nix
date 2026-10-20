{ inputs, ... }:

{
  flake.modules.nixos.stylix = { config, pkgs, ... }: {
    imports = [
      inputs.stylix.nixosModules.stylix
    ];

    stylix = {
      enable = true;
      autoEnable = false;
      base16Scheme = "${pkgs.base16-schemes}/share/themes/tokyo-night-dark.yaml";
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

  flake.modules.homeManager.stylix = {
    stylix.targets = {
      bat.enable = true;
      btop.enable = true;
      fzf.enable = true;
      ghostty.enable = true;
      gtk = {
        enable = true;
        flatpakSupport.enable = true;
      };
      kitty.enable = true;
      lazygit.enable = true;
      mpv.enable = true;
      noctalia.enable = true;
      spicetify.enable = false;
      yazi.enable = true;
      zathura.enable = true;
      zen-browser = {
        enable = true;
        profileNames = [ "default" ];
      };
    };
  };
}
