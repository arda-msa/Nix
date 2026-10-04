{
  flake.modules.nixos.graphical = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      ffmpegthumbnailer
      nautilus
    ];
  };
}
