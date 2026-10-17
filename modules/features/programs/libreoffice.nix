{
  flake.modules.homeManager.libreoffice = { pkgs, ... }: {
    home.packages = with pkgs; [
      hunspellDicts.en_US
      hunspellDicts.tr_TR
    ];

    programs.libreoffice.enable = true;
  };
}
