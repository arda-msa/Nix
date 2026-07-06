{ hostname, username, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  networking.hostName = "${hostname}";

  users.users.${username} = {
    isNormalUser = true;
    description = "${username}";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  # https://wiki.nixos.org/wiki/FAQ/When_do_I_update_stateVersion
  system.stateVersion = "26.05";
}
