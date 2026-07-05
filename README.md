# NixOS

My **NixOS** configuration, managed with **Flakes** and **Home Manager**.

## Structure

```
./
├── config/
│   ├── niri/
│   ├── nvim/
│   └── waybar/
├── home/
│   ├── cli/
│   │   ├── atuin.nix
│   │   ├── default.nix
│   │   ├── eza.nix
│   │   ├── fish.nix
│   │   ├── fzf.nix
│   │   ├── git.nix
│   │   ├── nix-search-tv.nix
│   │   ├── nix-your-shell.nix
│   │   ├── starship.nix
│   │   ├── television.nix
│   │   └── zoxide.nix
│   ├── desktop/
│   │   ├── default.nix
│   │   ├── fuzzel.nix
│   │   ├── mako.nix
│   │   ├── niri.nix
│   │   ├── swaylock.nix
│   │   └── waybar.nix
│   ├── gui/
│   │   ├── default.nix
│   │   ├── ghostty.nix
│   │   └── mpv.nix
│   ├── tui/
│   │   ├── btop.nix
│   │   ├── default.nix
│   │   ├── lazygit.nix
│   │   ├── neovim.nix
│   │   └── yazi.nix
│   └── default.nix
├── hosts/
│   ├── akdeniz/
│   │   └── default.nix
│   └── karadeniz/
│       ├── configuration.nix
│       ├── default.nix
│       ├── hardware-configuration.nix
│       └── home.nix
├── system/
│   ├── core/
│   │   ├── audio.nix
│   │   ├── boot.nix
│   │   ├── default.nix
│   │   ├── fonts.nix
│   │   └── locale.nix
│   ├── hardware/
│   │   ├── bluetooth.nix
│   │   ├── default.nix
│   │   ├── intel.nix
│   │   └── zram.nix
│   ├── programs/
│   │   ├── default.nix
│   │   ├── localsend.nix
│   │   └── nh.nix
│   ├── virtualisation/
│   │   ├── default.nix
│   │   └── libvirt.nix
│   └── default.nix
├── flake.lock
├── flake.nix
├── .gitignore
└── README.md
```
