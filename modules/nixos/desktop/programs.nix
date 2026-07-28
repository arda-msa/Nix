{ ... }:

{
  programs.git.enable = true;

  programs.firefox.enable = true;

  programs.localsend = {
    enable = true;
    openFirewall = true;
  };
}
