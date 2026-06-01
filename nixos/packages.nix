{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # GUI Apps
    foliate
    loupe
    nautilus
    obsidian
    snapshot

    # GNOME Apps
    # dconf-editor
    # gnome-extension-manager
    # gnome-tweaks

    # Wayland Stack
    brightnessctl
    fuzzel
    libnotify
    mako
    playerctl
    swaybg
    swaylock
    waybar
    wl-clipboard
    xdg-utils
    xwayland-satellite

    # Appearance
    adw-gtk3
    morewaita-icon-theme
    bibata-cursors
    nwg-look

    # Editors
    micro
    neovim

    # Terminal
    ghostty

    # Development Tools
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
    television
    starship
    zoxide

    # File Management
    exiftool
    jq
    p7zip
    sshfs
    tree
    unzip
    yazi

    # System
    bluetui
    btop
    fastfetch
    lazygit
    wiremix
    wev

    # Media Tools
    cava
    ffmpegthumbnailer
    imagemagick
    mpv

    # Fun
    cbonsai
    cmatrix
  ];
}
