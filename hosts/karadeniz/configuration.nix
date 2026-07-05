{ inputs, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../system
  ];

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.arda = import ./home.nix;
    backupFileExtension = "backup";
    extraSpecialArgs = { inherit inputs; };
  };

  networking.hostName = "karadeniz";

  users.users.arda = {
    isNormalUser = true;
    description = "Arda";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  # https://wiki.nixos.org/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "26.05";
}
