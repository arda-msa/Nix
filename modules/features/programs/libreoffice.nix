{
  flake.modules.homeManager.graphical = { pkgs, ... }: {
    home.packages = with pkgs; [
      libreoffice
      hunspellDicts.en_US
      hunspellDicts.tr_TR
    ];
  };
}
