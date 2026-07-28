{ ... }:

{
  programs.lazygit = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      gui = {
        nerdFontsVersion = "3";
        showFileIcons = true;
      };
    };
  };
}
