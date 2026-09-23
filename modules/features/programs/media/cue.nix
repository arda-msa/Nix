{
  flake.modules.homeManager.graphical =
    { pkgs, ... }:
    let
      cue = pkgs.buildGoModule rec {
        pname = "cue";
        version = "1.2.5";

        src = pkgs.fetchFromGitHub {
          owner = "SuperCoolPencil";
          repo = "cue";
          rev = "v${version}";
          hash = "sha256-BV/NADoD2IpZ1KHKoGRhLt4y6r0KRQZ7Bu8o5EZSQ68=";
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
