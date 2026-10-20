{ self, ... }:

{
  flake.modules.nixos.desktop = {
    imports = with self.modules.nixos; [
      audio
      bluetooth
      firefox
      gdm
      # gnome
      hyprland
      localsend
      nautilus
      niri
      # plasma
      # plasma-login-manager
      podman
      services
    ];
  };

  flake.modules.homeManager.desktop = {
    imports = with self.modules.homeManager; [
      brave-origin
      calibre
      cue
      distrobox
      gallery-dl
      ghostty
      hyprland
      kitty
      lazygit
      libreoffice
      media-packages
      mpv
      niri
      noctalia
      obsidian
      prismlauncher
      qbittorrent
      spicetify
      spotify-player
      swayimg
      wiremix
      yt-dlp
      zathura
      zen-browser
    ];
  };
}
