{
  flake.modules.homeManager.cue =
    { pkgs, ... }:
    let
      cue = pkgs.buildGoModule rec {
        pname = "cue";
        version = "1.3.4";

        src = pkgs.fetchFromGitHub {
          owner = "SuperCoolPencil";
          repo = "cue";
          rev = "v${version}";
          hash = "sha256-Q5dv+qNqbUeV8MQQHfJMRyRFGQLcWWzAr28zl0pM7rs=";
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
