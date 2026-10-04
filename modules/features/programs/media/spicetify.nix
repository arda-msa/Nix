{ inputs, ... }:

{
  flake.modules.homeManager.graphical =
    { pkgs, ... }:
    let
      spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system};
    in
    {
      imports = [
        inputs.spicetify-nix.homeManagerModules.default
      ];

      programs.spicetify = {
        enable = true;

        enabledExtensions = with spicePkgs.extensions; [
          allOfArtist
          bookmark
          fullAppDisplay
          history
          listPlaylistsWithSong
          savePlaylists
          shuffle
          skipStats
          sortPlay
        ];
      };

      stylix.targets.spicetify.enable = true;
    };
}
