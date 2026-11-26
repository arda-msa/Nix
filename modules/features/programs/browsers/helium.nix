{ inputs, ... }:

{
  flake.modules.nixos.helium = { pkgs, ... }: {
    environment.systemPackages = [
      inputs.helium.packages.${pkgs.stdenv.hostPlatform.system}.default
    ];

    programs.chromium = {
      enable = true;

      extensions = [
        "nngceckbapebfimnlniiiahkandclblb" # Bitwarden Password Manager
        "fnaicdffflnofjppbagibeoednhnbjhg" # Floccus Bookmarks Sync
        "jhnleheckmknfcgijgkadoemagpecfol" # Auto Tab Discard
        "onglbklimdjicpdadjieknodkkmjldoa" # Reddit Enhancer
        "fadndhdgpmmaapbmfcknlfgcflmmmieb" # FrankerFaceZ
      ];

      extraOpts = {
        BrowserSignin = 0;
        PasswordManagerEnabled = false;
        RestoreOnStartup = 1; # Continue where you left off
      };
    };
  };
}
