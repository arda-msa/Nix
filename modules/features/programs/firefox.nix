{
  flake.modules.nixos.graphical = {
    programs.firefox = {
      enable = true;
      languagePacks = [
        "en-US"
        "tr"
      ];

      policies = {
        AutofillAddressEnabled = false;
        AutofillCreditCardEnabled = false;
        DisableAppUpdate = true;
        DisableFirefoxAccounts = true;
        DisableFirefoxStudies = true;
        DisableTelemetry = true;
        DisablePocket = true;
        DisplayMenuBar = "never";
        DontCheckDefaultBrowser = true;
        HardwareAcceleration = true;
        PasswordManagerEnabled = false;

        AIControls.Default.Value = "blocked";
        AIControls.Translations.Value = "available";

        FirefoxSuggest.WebSuggestions = false;
        FirefoxSuggest.SponsoredSuggestions = false;
        FirefoxSuggest.ImproveSuggest = false;

        NewTabPage = false;
        Homepage.URL = "about:blank";
        Homepage.StartPage = "none";

        Preferences = {
          "browser.aboutConfig.showWarning" = false;
          "browser.translations.automaticallyPopup" = false;
          "intl.accept_languages" = "en-US, en, tr";
          "media.ffmpeg.vaapi.enabled" = true;
        };

        ExtensionSettings = {
          # uBlock Origin
          "uBlock0@raymondhill.net" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
            installation_mode = "force_installed";
            default_area = "navbar";
            private_browsing = true;
          };

          # Bitwarden
          "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
            installation_mode = "force_installed";
            default_area = "navbar";
          };

          # Floccus Bookmarks Sync
          "floccus@handmadeideas.org" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/floccus/latest.xpi";
            installation_mode = "force_installed";
            default_area = "navbar";
          };

          # Auto Tab Discard
          "{c2c003ee-bd69-42a2-b0e9-6f34222cb046}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/auto-tab-discard/latest.xpi";
            installation_mode = "normal_installed";
          };

          # FrankerFaceZ
          "frankerfacez@frankerfacez.com" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/frankerfacez/latest.xpi";
            installation_mode = "normal_installed";
          };

          # Reddit Enhancer
          "{46abbc04-ce38-475f-9ef8-e0a4a59d0c9f}" = {
            install_url = "https://addons.mozilla.org/firefox/downloads/latest/reddit-enhancer/latest.xpi";
            installation_mode = "normal_installed";
          };
        };

        # Extension Configuration
        "3rdparty".Extensions = {
          "uBlock0@raymondhill.net".adminSettings = {
            selectedFilterLists = [
              "adguard-cookies"
              "easylist"
              "easylist-newsletters"
              "easylist-annoyances"
              "easyprivacy"
              "plowe-0"
              "ublock-annoyances"
              "ublock-badware"
              "ublock-cookies-adguard"
              "ublock-filters"
              "ublock-privacy"
              "ublock-quick-fixes"
              "ublock-unbreak"
              "urlhaus-1"
              "user-filters"
            ];
          };
        };
      };
    };
  };
}
