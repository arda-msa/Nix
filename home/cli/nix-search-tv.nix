{ ... }:

{
  programs.nix-search-tv = {
    enable = true;
    enableTelevisionIntegration = true;

    settings = {
      indexes = [
        "nixpkgs"
        "nixos"
        "home-manager"
        "nur"
        "noogle"
      ];
    };
  };
}
