{ self, ... }:

{
  flake.modules.nixos.base = {
    imports = with self.modules.nixos; [
      boot
      fonts
      fwupd
      git
      locale
      neovim
      network
      nix
      shell
      stylix
      zram
    ];
  };

  flake.modules.homeManager.base = {
    imports = with self.modules.homeManager; [
      bat
      btop
      eza
      fd
      fzf
      git
      gtk
      jq
      neovim
      nh
      nix-search-tv
      nix-your-shell
      packages
      ripgrep
      shell
      starship
      stylix
      television
      xdg
      yazi
      zoxide
    ];
  };
}
