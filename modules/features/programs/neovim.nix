{ ... }:

{
  flake.modules.homeManager.neovim = { config, pkgs, ... }: {
    home.packages = with pkgs; [
      gcc
      neovim
      tree-sitter

      lua-language-server
      stylua
      nixd
      nixfmt
    ];

    home.sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      # MANPAGER = "nvim +Man!";
    };

    xdg.configFile."nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/nixos/config/nvim";
      recursive = true;
    };
  };
}
