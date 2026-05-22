# NixOS

My **NixOS** configuration, managed with **Flakes** and **Home Manager**.

## Structure

```
./
├── home-manager/
│   ├── dotfiles.nix
│   └── home.nix
├── nixos/
│   ├── configuration.nix
│   ├── gnome.nix
│   └── hardware-configuration.nix
├── flake.lock
├── flake.nix
└── README.md
```

## Notes

- Config files (shell, editor, tools) are managed in a separate [dotfiles](https://github.com/arda-msa/dotfiles) repository and symlinked into place via `dotfiles.nix` using `mkOutOfStoreSymlink`.
