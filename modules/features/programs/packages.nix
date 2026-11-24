{
  flake.modules.homeManager.packages = { pkgs, ... }: {
    home.packages = with pkgs; [
      gitlogue
      glow
      leaf-markdown-viewer
      qalculate-gtk
      tree
      wl-clipboard
    ];
  };
}
