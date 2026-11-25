{ self, ... }:

{
  flake.modules.nixos.git = {
    programs.git.enable = true;
  };

  flake.modules.homeManager.git = {
    imports = with self.modules.homeManager; [
      delta
    ];

    programs.git = {
      enable = true;

      settings = {
        user = {
          name = "arda-msa";
          email = "arda.msa.dev@gmail.com";
        };
        init.defaultBranch = "main";

        core.pager = "delta";
        interactive.diffFilter = "delta --color-only";
        merge.conflictstyle = "zdiff3";
      };
    };
  };
}
