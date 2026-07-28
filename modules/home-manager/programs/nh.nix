{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    nvd
    nix-output-monitor
  ];

  programs.nh = {
    enable = true;
    flake = "${config.home.homeDirectory}/nixos";
  };
}
