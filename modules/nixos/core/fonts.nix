{ pkgs, ... }:

{
  fonts.enableDefaultPackages = true;

  fonts.packages = with pkgs; [
    noto-fonts
    adwaita-fonts
    nerd-fonts.jetbrains-mono
  ];
}
