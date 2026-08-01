{ self, inputs, ... }:

{
  flake.nixosConfigurations.karadeniz = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.karadeniz
      inputs.home-manager.nixosModules.home-manager
      {
        home-manager = {
          useGlobalPkgs = true;
          useUserPackages = true;
          backupFileExtension = "bak";
          users.arda = self.modules.homeManager.karadeniz;
        };
      }
    ];
  };

  flake.modules.nixos.karadeniz = { pkgs, ... }: {
    imports = with self.modules.nixos; [
      karadeniz-hardware

      base
      bluetooth
      gnome
      firefox
      localsend
      intel
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

    users.defaultUserShell = pkgs.fish;

    # https://wiki.nixos.org/wiki/FAQ/When_do_I_update_stateVersion
    system.stateVersion = "26.05";
  };

  flake.modules.homeManager.karadeniz = {
    home = {
      username = "arda";
      homeDirectory = "/home/arda";
      stateVersion = "26.05";
    };

    imports = with self.modules.homeManager; [
      base
      ghostty
      mpv
      neovim
    ];
  };
}
