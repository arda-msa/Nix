# NixOS

My **NixOS** configuration, managed with **Homa Manager** and **Flakes**.

## Structure

```
./
├── config/
│   └── nvim/
├── modules/
│   ├── home-manager/
│   │   ├── core/
│   │   │   ├── packages.nix
│   │   │   └── xdg.nix
│   │   ├── programs/
│   │   │   ├── btop.nix
│   │   │   ├── ghostty.nix
│   │   │   ├── git.nix
│   │   │   ├── lazygit.nix
│   │   │   ├── mpv.nix
│   │   │   ├── neovim.nix
│   │   │   ├── nh.nix
│   │   │   └── yazi.nix
│   │   ├── shell/
│   │   │   ├── fish.nix
│   │   │   └── tools.nix
│   │   └── default.nix
│   ├── hosts/
│   │   └── karadeniz/
│   │       ├── configuration.nix
│   │       ├── hardware-configuration.nix
│   │       └── home.nix
│   └── nixos/
│       ├── core/
│       │   ├── boot.nix
│       │   ├── fonts.nix
│       │   ├── locale.nix
│       │   ├── network.nix
│       │   ├── nix.nix
│       │   └── shell.nix
│       ├── desktop/
│       │   ├── gnome.nix
│       │   └── programs.nix
│       ├── hardware/
│       │   ├── bluetooth.nix
│       │   ├── intel.nix
│       │   └── zram.nix
│       └── default.nix
├── flake.lock
├── flake.nix
└── README.md
```
