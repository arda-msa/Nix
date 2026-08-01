{ ... }:

{
  flake.modules.nixos.fonts = { pkgs, ... }: {
    fonts.enableDefaultPackages = true;

    fonts.packages = with pkgs; [
      nerd-fonts.jetbrains-mono
    ];
  };
}
