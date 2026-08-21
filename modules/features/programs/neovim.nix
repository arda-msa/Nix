{
  flake.modules.nixos.base = {
    programs.neovim = {
      enable = true;
      defaultEditor = true;
    };
  };

  flake.modules.homeManager.base = { config, pkgs, ... }: {
    home.packages = with pkgs; [
      gcc
      tree-sitter

      lua-language-server
      stylua
      nixd
      nixfmt
    ];

    programs.neovim = {
      enable = true;
      defaultEditor = true;
      sideloadInitLua = true;
    };

    xdg.configFile."nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/Foundry/config/nvim";
      recursive = true;
    };

  };
}
