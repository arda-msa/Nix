{ self, ... }:

{
  flake.modules.nixos.karadeniz = { ... }: {
    imports = with self.modules.nixos; [
      karadeniz-hardware

      boot
      fonts
      locale
      network
      nix
      shell
      gnome
      git
      firefox
      localsend
      bluetooth
      intel
      zram
    ];

    networking.hostName = "karadeniz";

    users.users.arda = {
      isNormalUser = true;
      description = "arda";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };

    # https://wiki.nixos.org/wiki/FAQ/When_do_I_update_stateVersion
    system.stateVersion = "26.05";
  };
}
