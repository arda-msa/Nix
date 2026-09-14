{
  flake.modules.homeManager.graphical =
    { pkgs, ... }:
    let
      cue = pkgs.buildGoModule rec {
        pname = "cue";
        version = "1.2.1";

        src = pkgs.fetchFromGitHub {
          owner = "SuperCoolPencil";
          repo = "cue";
          rev = "v${version}";
          hash = "sha256-Eqkh/mCRP7GwZurFx6w6PDPsCrEGujp4XMBY8a6SYvc=";
        };

        vendorHash = "sha256-acCkY2k3ulkyAmJxeAd5la+Ot8scxipX2+ECwKjtmZI=";

        meta = {
          description = "A terminal client for browsing and playing Plex or Jellyfin media.";
          homepage = "https://github.com/SuperCoolPencil/cue";
          license = pkgs.lib.licenses.mit;
        };
      };
    in
    {
      home.packages = [ cue ];
    };
}
