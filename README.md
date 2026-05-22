# NixOS

My personal NixOS configuration.

## Structure

```
nixos/
├── configuration.nix
├── dotfiles.nix
├── flake.lock
├── flake.nix
├── hardware-configuration.nix
├── home.nix
└── README.md
```

## Notes

- Config files (shell, editor, tools) are managed in a separate [dotfiles](https://github.com/arda-msa/dotfiles) repository and symlinked into place via `dotfiles.nix` using `mkOutOfStoreSymlink`.
- `configuration.nix` and `home.nix` will be modularized in the future.
