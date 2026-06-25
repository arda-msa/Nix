# NixOS

My **NixOS** configuration, managed with **Flakes** and **Home Manager**.

## Directory Structure

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

- Some of the config files (shell, editor, tools) are not managed with the relevant nix modules. They symlinked into place via **home-manager** using `mkOutOfStoreSymlink`.
