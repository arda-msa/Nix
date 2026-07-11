# NixOS

My **NixOS** configuration, managed with **Flakes** and **Home Manager**.

## Structure

```
./
├── config/
│   ├── niri/
│   ├── nvim/
│   └── waybar/
├── hosts/
│   ├── akdeniz/
│   └── karadeniz/
├── modules/
│   ├── home-manager/
│   │   ├── core/
│   │   ├── desktop/
│   │   ├── programs/
│   │   ├── shell/
│   │   └── default.nix
│   └── nixos/
│       ├── core/
│       ├── desktop/
│       ├── hardware/
│       ├── programs/
│       ├── services/
│       ├── virtualisation/
│       └── default.nix
├── wallpapers/
├── flake.lock
├── flake.nix
├── .gitignore
└── README.md
```
