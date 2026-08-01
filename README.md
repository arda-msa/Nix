# NixOS

My **NixOS** configuration, managed with **Homa Manager** and **Flakes**, following the **Dendritic Pattern**.

## Structure

```
./
./
├── config/
│   └── nvim/
├── modules/
│   ├── features/
│   │   ├── desktop/
│   │   │   └── gnome.nix
│   │   ├── programs/
│   │   │   ├── btop.nix
│   │   │   ├── firefox.nix
│   │   │   ├── ghostty.nix
│   │   │   ├── git.nix
│   │   │   ├── lazygit.nix
│   │   │   ├── localsend.nix
│   │   │   ├── mpv.nix
│   │   │   ├── neovim.nix
│   │   │   ├── nh.nix
│   │   │   ├── packages.nix
│   │   │   └── yazi.nix
│   │   ├── shell/
│   │   │   ├── fish.nix
│   │   │   ├── shell.nix
│   │   │   └── tools.nix
│   │   ├── bluetooth.nix
│   │   ├── boot.nix
│   │   ├── fonts.nix
│   │   ├── intel.nix
│   │   ├── locale.nix
│   │   ├── network.nix
│   │   ├── nix.nix
│   │   ├── xdg.nix
│   │   └── zram.nix
│   ├── hosts/
│   │   └── karadeniz/
│   │       ├── configuration.nix
│   │       ├── default.nix
│   │       ├── hardware-configuration.nix
│   │       └── home.nix
│   └── flake-parts.nix
├── flake.lock
├── flake.nix
└── README.md
```
