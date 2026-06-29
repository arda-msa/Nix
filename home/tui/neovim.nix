{
  config,
  pkgs,
  ...
}:

let
  symlink = config.lib.file.mkOutOfStoreSymlink;
  dotfiles = "${config.home.homeDirectory}/nixos/config/nvim";
in

{
  home.packages = with pkgs; [
    gcc
    neovim
    tree-sitter

    lua-language-server
    stylua
    nixd
    nixfmt
  ];

  xdg.configFile."nvim" = {
    source = symlink dotfiles;
    recursive = true;
  };

  xdg.desktopEntries.nvim = {
    name = "Neovim";
    genericName = "Text Editor";
    comment = "Edit text files";
    icon = "nvim";
    type = "Application";
    terminal = true;
    exec = "nvim %F";
    settings = {
      TryExec = "nvim";
      Keywords = "Text;editor;";
    };
    categories = [
      "Utility"
      "TextEditor"
      "Development"
    ];
    startupNotify = false;
    mimeType = [
      "text/english"
      "text/plain"
      "text/x-makefile"
      "text/x-c++hdr"
      "text/x-c++src"
      "text/x-chdr"
      "text/x-csrc"
      "text/x-java"
      "text/x-moc"
      "text/x-pascal"
      "text/x-tcl"
      "text/x-tex"
      "application/x-shellscript"
      "text/x-c"
      "text/x-c++"
    ];
  };
}
