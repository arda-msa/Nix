{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/dotfiles";
  symlink = config.lib.file.mkOutOfStoreSymlink;
in

{
  xdg.configFile."btop".source = symlink "${dotfiles}/btop/.config/btop";
  xdg.configFile."fastfetch".source = symlink "${dotfiles}/fastfetch/.config/fastfetch";
  xdg.configFile."fish".source = symlink "${dotfiles}/fish/.config/fish";
  xdg.configFile."fuzzel".source = symlink "${dotfiles}/fuzzel/.config/fuzzel";
  xdg.configFile."ghostty".source = symlink "${dotfiles}/ghostty/.config/ghostty";
  xdg.configFile."git".source = symlink "${dotfiles}/git/.config/git";
  xdg.configFile."lazygit".source = symlink "${dotfiles}/lazygit/.config/lazygit";
  xdg.configFile."mako".source = symlink "${dotfiles}/mako/.config/mako";
  xdg.configFile."micro".source = symlink "${dotfiles}/micro/.config/micro";
  xdg.configFile."mpv".source = symlink "${dotfiles}/mpv/.config/mpv";
  xdg.configFile."niri".source = symlink "${dotfiles}/niri/.config/niri";
  xdg.configFile."nvim".source = symlink "${dotfiles}/nvim/.config/nvim";
  xdg.configFile."starship.toml".source = symlink "${dotfiles}/starship/.config/starship.toml";
  xdg.configFile."swaylock".source = symlink "${dotfiles}/swaylock/.config/swaylock";
  xdg.configFile."waybar".source = symlink "${dotfiles}/waybar/.config/waybar";
  xdg.configFile."xdg-desktop-portal-termfilechooser".source =
    symlink "${dotfiles}/xdg-desktop-portal-termfilechooser/.config/xdg-desktop-portal-termfilechooser";
  xdg.configFile."yazi".source = symlink "${dotfiles}/yazi/.config/yazi";
}
