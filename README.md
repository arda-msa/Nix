# Nix

My **NixOS** configuration, managed with **Home Manager** and **Flakes**, following the **Dendritic Pattern**.

## Structure

```
./
├── config/
│   ├── niri/
│   └── nvim/
├── modules/
│   ├── extra/
│   │   ├── flake-parts.nix
│   │   └── home-manager.nix
│   ├── features/
│   │   ├── core/
│   │   │   ├── boot.nix
│   │   │   ├── locale.nix
│   │   │   ├── network.nix
│   │   │   ├── nix.nix
│   │   │   └── xdg.nix
│   │   ├── desktop/
│   │   │   ├── gdm.nix
│   │   │   ├── gnome.nix
│   │   │   ├── niri.nix
│   │   │   └── noctalia.nix
│   │   ├── hardware/
│   │   │   ├── bluetooth.nix
│   │   │   ├── intel.nix
│   │   │   └── zram.nix
│   │   ├── programs/
│   │   │   ├── bat.nix
│   │   │   ├── btop.nix
│   │   │   ├── eza.nix
│   │   │   ├── fd.nix
│   │   │   ├── firefox.nix
│   │   │   ├── fzf.nix
│   │   │   ├── ghostty.nix
│   │   │   ├── git.nix
│   │   │   ├── kitty.nix
│   │   │   ├── lazygit.nix
│   │   │   ├── localsend.nix
│   │   │   ├── mpv.nix
│   │   │   ├── neovim.nix
│   │   │   ├── nh.nix
│   │   │   ├── nix-search-tv.nix
│   │   │   ├── nix-your-shell.nix
│   │   │   ├── packages.nix
│   │   │   ├── ripgrep.nix
│   │   │   ├── starship.nix
│   │   │   ├── television.nix
│   │   │   ├── yazi.nix
│   │   │   └── zoxide.nix
│   │   ├── shell/
│   │   │   ├── fish.nix
│   │   │   └── shell.nix
│   │   └── style/
│   │       ├── fonts.nix
│   │       ├── gtk.nix
│   │       └── stylix.nix
│   └── hosts/
│       └── karadeniz/
│           ├── configuration.nix
│           └── hardware-configuration.nix
├── flake.lock
├── flake.nix
└── README.md
```
