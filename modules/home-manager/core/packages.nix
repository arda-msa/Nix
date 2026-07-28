{ pkgs, ... }:

{
  home.packages = with pkgs; [
    gitlogue
    wiremix
  ];
}
