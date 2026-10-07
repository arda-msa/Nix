{
  flake.modules.nixos.graphical = {
    virtualisation.podman = {
      enable = true;
      dockerCompat = true;
    };
  };

  flake.modules.homeManager.graphical = { pkgs, ... }: {
    home.packages = [
      pkgs.distroshelf
    ];

    programs.distrobox.enable = true;
  };
}
