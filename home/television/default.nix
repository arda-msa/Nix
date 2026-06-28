{ ... }:

{
  programs.television = {
    enable = true;
    enableFishIntegration = false;

    channels = {
      # TODO: Create customized channels suited to my needs.
      # Currently, most channels are created imperatively via
      # `tv update-channels`.

      # `nix` channel is added for the nix-search-tv integration.
      nix = {
        metadata = {
          name = "nix";
          requirements = [ "nix-search-tv" ];
        };
        source = {
          command = "nix-search-tv print";
        };
        preview = {
          command = "nix-search-tv preview {}";
        };
      };
    };
  };
}
