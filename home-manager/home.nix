{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/dotfiles";
  symlink = config.lib.file.mkOutOfStoreSymlink;
in

{
  home = {
    username = "arda";
    homeDirectory = "/home/arda";
    stateVersion = "26.05";
  };

  home.preferXdgDirectories = true;

  xdg.enable = true;

  xdg.userDirs = {
    enable = true;
    createDirectories = true;
  };

  xdg.configFile = {
    "btop".source = symlink "${dotfiles}/btop/.config/btop";
    "fastfetch".source = symlink "${dotfiles}/fastfetch/.config/fastfetch";
    "fish".source = symlink "${dotfiles}/fish/.config/fish";
    "fuzzel".source = symlink "${dotfiles}/fuzzel/.config/fuzzel";
    "ghostty".source = symlink "${dotfiles}/ghostty/.config/ghostty";
    "git".source = symlink "${dotfiles}/git/.config/git";
    "lazygit".source = symlink "${dotfiles}/lazygit/.config/lazygit";
    "mako".source = symlink "${dotfiles}/mako/.config/mako";
    "micro".source = symlink "${dotfiles}/micro/.config/micro";
    "mpv".source = symlink "${dotfiles}/mpv/.config/mpv";
    "niri".source = symlink "${dotfiles}/niri/.config/niri";
    "nvim".source = symlink "${dotfiles}/nvim/.config/nvim";
    "starship.toml".source = symlink "${dotfiles}/starship/.config/starship.toml";
    "swaylock".source = symlink "${dotfiles}/swaylock/.config/swaylock";
    "television".source = symlink "${dotfiles}/television/.config/television";
    "waybar".source = symlink "${dotfiles}/waybar/.config/waybar";
    "xdg-desktop-portal-termfilechooser".source =
      symlink "${dotfiles}/xdg-desktop-portal-termfilechooser/.config/xdg-desktop-portal-termfilechooser";
    "yazi".source = symlink "${dotfiles}/yazi/.config/yazi";
  };

  xdg.desktopEntries = {
    bluetui = {
      name = "Bluetui";
      genericName = "Bluetooth Manager";
      comment = "Manage bluetooth settings";
      icon = "bluetooth";
      type = "Application";
      terminal = true;
      exec = "bluetui";
      categories = [ "Utility" ];
    };

    wiremix = {
      name = "Wiremix";
      genericName = "Audio Mixer";
      comment = "Manage audio settings";
      icon = "audio";
      type = "Application";
      terminal = true;
      exec = "wiremix";
      categories = [ "Utility" ];
    };

    nvim = {
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
  };
}
