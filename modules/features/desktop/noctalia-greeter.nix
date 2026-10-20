{
  flake.modules.nixos.noctalia-greeter = { pkgs, ... }: {
    services.displayManager.noctalia-greeter = {
      enable = true;

      passwordlessSyncUsers = [ "arda" ];

      cursorTheme = {
        package = pkgs.adwaita-icon-theme;
        name = "Adwaita";
      };

      settings = {
        cursor.size = 24;
        keyboard_layout = "tr";
      };
    };
  };
}
