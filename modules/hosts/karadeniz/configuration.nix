{ self, inputs, ... }:

{
  flake.nixosConfigurations.karadeniz = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.modules.nixos.karadeniz
    ];
  };

  flake.modules.nixos.karadeniz = { pkgs, ... }: {
    imports = with self.modules.nixos; [
      karadeniz-hardware
      homeManager

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

    home-manager.users.arda = self.modules.homeManager.karadeniz;

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
