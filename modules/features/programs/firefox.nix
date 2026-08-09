{
  flake.modules.nixos.graphical = {
    programs.firefox = {
      enable = true;

      policies = {
        DisableAppUpdate = true;
        DisableFirefoxAccounts = true;
        DisableFirefoxStudies = true;
        DisableTelemetry = true;
        DisablePocket = true;
        DontCheckDefaultBrowser = true;
        OfferToSaveLogins = false;

        ExtensionSettings = {
          # uBlock Origin
          "uBlock0@raymondhill.net" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
            installation_mode = "force_installed";
          };

          # Bitwarden
          "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
            installation_mode = "force_installed";
          };

          # Floccus Bookmarks Sync
          "floccus@handmadeideas.org" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/floccus/latest.xpi";
            installation_mode = "force_installed";
          };

          # Auto Tab Discard
          "{c2c003ee-bd69-42a2-b0e9-6f34222cb046}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/auto-tab-discard/latest.xpi";
            installation_mode = "force_installed";
          };

          # FrankerFaceZ
          "frankerfacez@frankerfacez.com" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/frankerfacez/latest.xpi";
            installation_mode = "force_installed";
          };
        };
      };
    };
  };
}
