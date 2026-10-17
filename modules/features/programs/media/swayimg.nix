{
  flake.modules.homeManager.swayimg = { config, pkgs, ... }: {
    programs.swayimg.enable = true;

    xdg.configFile."swayimg".source =
      config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Nix/config/swayimg";

    xdg.dataFile."swayimg-stubs".source = "${pkgs.swayimg}/share/swayimg";
  };
}
