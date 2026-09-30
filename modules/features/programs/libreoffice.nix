{
  flake.modules.homeManager.graphical = { pkgs, ... }: {
    home.packages = with pkgs; [
      hunspellDicts.en_US
      hunspellDicts.tr_TR
    ];

    programs.libreoffice.enable = true;
  };
}
