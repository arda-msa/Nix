{ inputs, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.arda = import ../home-manager/home.nix;
    backupFileExtension = "backup";
    extraSpecialArgs = { inherit inputs; };
  };
}
