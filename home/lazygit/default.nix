{ ... }:

{
  programs.lazygit = {
    enable = true;
    enableFishIntegration = false;

    settings = {
      gui = {
        nerdFontsVersion = "3";
        showFileIcons = true;

        theme = {
          activeBorderColor = [
            "white"
            "bold"
          ];
          inactiveBorderColor = [
            "white"
          ];
          searchingActiveBorderColor = [
            "cyan"
            "bold"
          ];
          optionsTextColor = [
            "blue"
          ];
          selectedLineBgColor = [
            "default"
          ];
          selectedRangeBgColor = [
            "default"
          ];
          cherryPickedCommitBgColor = [
            "cyan"
          ];
          cherryPickedCommitFgColor = [
            "blue"
          ];
          unstagedChangesColor = [
            "red"
          ];
          defaultFgColor = [
            "default"
          ];
        };
      };
    };
  };
}
