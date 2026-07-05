{ pkgs, ... }:

{
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
      ];
    };

    intel-gpu-tools.enable = true;
  };
}
