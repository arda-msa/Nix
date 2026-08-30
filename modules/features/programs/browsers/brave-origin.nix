{
  flake.modules.homeManager.graphical = { pkgs, ... }: {
    programs.chromium = {
      enable = true;
      package = pkgs.brave-origin;

      extensions = [
        # { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # uBlock Origin
        { id = "nngceckbapebfimnlniiiahkandclblb"; } # Bitwarden Password Manager
        { id = "fnaicdffflnofjppbagibeoednhnbjhg"; } # Floccus Bookmarks Sync
        { id = "jhnleheckmknfcgijgkadoemagpecfol"; } # Auto Tab Discard
        { id = "onglbklimdjicpdadjieknodkkmjldoa"; } # Reddit Enhancer
        { id = "fadndhdgpmmaapbmfcknlfgcflmmmieb"; } # FrankerFaceZ
      ];
    };
  };
}
