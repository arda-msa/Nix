{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    nvd
    nix-output-monitor
  ];

  programs.nh = {
    enable = true;
    flake = "$HOME/nixos";
  };
}
