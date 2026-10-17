{ self, ... }:

{
  flake.modules.nixos.desktop = {
    imports = with self.modules.nixos; [
      audio
      bluetooth
      firefox
      gdm
      # gnome
      localsend
      nautilus
      niri
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
      wiremix
      yt-dlp
      zathura
      zen-browser
    ];
  };
}
