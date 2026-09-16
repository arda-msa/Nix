{
  flake.modules.homeManager.graphical =
    { pkgs, ... }:
    let
      cue = pkgs.buildGoModule rec {
        pname = "cue";
        version = "1.2.4";

        src = pkgs.fetchFromGitHub {
          owner = "SuperCoolPencil";
          repo = "cue";
          rev = "v${version}";
          hash = "sha256-yPaOjulVsBeWEFjTeBSK7uWhdmgbTHSfhZV3otkO5L4=";
        };

        vendorHash = "sha256-VJEbnosZZYYLWy3+Mscd1v0rYWBS71C1lTk3zxeSXsQ=";

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
