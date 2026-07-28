{ ... }:

{
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

  programs.delta = {
    enable = true;
    enableGitIntegration = false;

    options = {
      line-numbers = true;
      navigate = true;
      side-by-side = true;
    };
  };
}
