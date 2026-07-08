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
│   ├── core/
│   │   ├── packages.nix
│   │   └── xdg.nix
│   ├── desktop/
│   │   ├── fuzzel.nix
│   │   ├── mako.nix
│   │   ├── niri.nix
│   │   ├── swaylock.nix
│   │   └── waybar.nix
│   ├── programs/
│   │   ├── btop.nix
│   │   ├── ghostty.nix
│   │   ├── lazygit.nix
│   │   ├── mpv.nix
│   │   ├── neovim.nix
│   │   └── yazi.nix
│   ├── shell/
│   │   ├── atuin.nix
│   │   ├── eza.nix
│   │   ├── fish.nix
│   │   ├── fzf.nix
│   │   ├── git.nix
│   │   ├── nix-search-tv.nix
│   │   ├── nix-your-shell.nix
│   │   ├── starship.nix
│   │   ├── television.nix
│   │   └── zoxide.nix
│   └── default.nix
├── hosts/
│   ├── akdeniz/
│   │   └── configuration.nix
│   └── karadeniz/
│       ├── configuration.nix
│       ├── hardware-configuration.nix
│       └── home.nix
├── system/
│   ├── core/
│   │   ├── boot.nix
│   │   ├── fonts.nix
│   │   ├── locale.nix
│   │   ├── nix.nix
│   │   └── shell.nix
│   ├── desktop/
│   │   ├── niri.nix
│   │   ├── polkit-agent.nix
│   │   └── tuigreet.nix
│   ├── hardware/
│   │   ├── bluetooth.nix
│   │   ├── fwupd.nix
│   │   ├── intel.nix
│   │   └── zram.nix
│   ├── programs/
│   │   ├── firefox.nix
│   │   ├── localsend.nix
│   │   └── nh.nix
│   ├── services/
│   │   ├── audio.nix
│   │   ├── network.nix
│   │   ├── power.nix
│   │   └── storage.nix
│   ├── virtualisation/
│   │   └── libvirt.nix
│   └── default.nix
├── flake.lock
├── flake.nix
├── .gitignore
└── README.md
```
