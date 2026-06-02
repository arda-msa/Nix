# NixOS

My **NixOS** configuration, managed with **Flakes** and **Home Manager**.

## Structure

```
./
├── home-manager/
│   └── home.nix
├── nixos/
│   ├── configuration.nix
│   ├── hardware-configuration.nix
│   └── packages.nix
├── flake.lock
├── flake.nix
├── .gitignore
└── README.md
```

## Notes

- Config files (shell, editor, tools) are managed in a separate [dotfiles](https://github.com/arda-msa/dotfiles/tree/nixos) repository and symlinked into place via `home.nix` using `mkOutOfStoreSymlink`.
