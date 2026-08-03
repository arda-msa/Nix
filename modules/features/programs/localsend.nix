{
  flake.modules.nixos.graphical = {
    programs.localsend = {
      enable = true;
      openFirewall = true;
    };
  };
}
