# NixOS

My **NixOS** configuration, managed with **Flakes** and **Home Manager**.

## Structure

```
./
├── home/
│   └── default.nix
├── hosts/
│   ├── akdeniz/
│   │   └── default.nix
│   └── karadeniz/
│       ├── default.nix
│       ├── hardware-configuration.nix
│       └── home.nix
├── system/
│   └── default.nix
├── flake.lock
├── flake.nix
├── .gitignore
└── README.md
```

## Notes

- Config files (shell, editor, tools) are managed in a separate [dotfiles](https://github.com/arda-msa/dotfiles/tree/nixos) repository and symlinked into place via **home-manager** using `mkOutOfStoreSymlink`.
