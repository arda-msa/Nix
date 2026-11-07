{
  flake.modules.homeManager.gallery-dl = { pkgs, ... }: {
    programs.gallery-dl = {
      enable = true;

      # Repo: https://codeberg.org/mikf/gallery-dl
      package = pkgs.gallery-dl.overridePythonAttrs (
        finalAttrs: old: {
          version = "1.32.19";
          src = pkgs.fetchFromCodeberg {
            owner = "mikf";
            repo = "gallery-dl";
            tag = "v${finalAttrs.version}";
            hash = "sha256-iMC0KpgyYPqyHpYwYw9DFsvCMHUIwqqVP2Pfm1SviB0=";
          };
        }
      );
    };
  };
}
