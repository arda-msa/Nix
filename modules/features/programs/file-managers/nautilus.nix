{
  flake.modules.nixos.nautilus = { pkgs, ... }: {
    environment.systemPackages = with pkgs; [
      ffmpegthumbnailer
      nautilus
    ];

    programs.nautilus-open-any-terminal = {
      enable = true;
      terminal = "kitty";
    };
  };
}
