{
  flake.modules.homeManager.packages = { pkgs, ... }: {
    home.packages = with pkgs; [
      gitlogue
      glow
      leaf-markdown-viewer
      tree
      wl-clipboard
    ];
  };
}
