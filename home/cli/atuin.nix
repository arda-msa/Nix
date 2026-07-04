{ ... }:

{
  programs.atuin = {
    enable = true;
    enableFishIntegration = true;

    flags = [ "--disable-ctrl-r" ];
  };
}
