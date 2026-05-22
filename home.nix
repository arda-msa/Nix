{ pkgs, ... }:

{
  imports = [ ./dotfiles.nix ];
  home.username = "arda";
  home.homeDirectory = "/home/arda";
  home.stateVersion = "25.11";

  home.preferXdgDirectories = true;

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    # Shell
    bat
    delta
    eza
    fd
    fzf
    ripgrep
    starship
    zoxide

    # Terminal
    ghostty

    # Editor
    gcc
    micro
    neovim
    tree-sitter

    # LSP & Formatter
    lua-language-server
    stylua
    nixd
    nixfmt

    # Media
    imagemagick

    # CLI & TUI
    btop
    cava
    cbonsai
    cmatrix
    fastfetch
    jq
    lazygit
    p7zip
    sshfs
    tree
    unzip
    wev
    wget
    wiremix
    yazi

    # Apps
    obsidian
  ];
}
