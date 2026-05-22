{ pkgs, ... }:

{
  imports = [ ./dotfiles.nix ];
  home.username = "arda";
  home.homeDirectory = "/home/arda";
  home.stateVersion = "25.11";

  home.preferXdgDirectories = true;

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    # Editors
    micro
    neovim

    # Terminal
    ghostty

    # Development
    gcc
    tree-sitter
    lua-language-server
    nixd
    nixfmt
    stylua

    # Shell Utilities
    bat
    delta
    eza
    fd
    fzf
    ripgrep
    starship
    zoxide

    # File Management
    jq
    p7zip
    sshfs
    tree
    unzip
    yazi

    # System
    btop
    fastfetch
    lazygit
    wiremix
    wev

    # Media
    imagemagick
    cava

    # Fun
    cbonsai
    cmatrix

    # GUI Apps
    obsidian
  ];
}
