{ pkgs, ... }:

{
  imports = [
    ./atuin.nix
    ./eza.nix
    ./fish.nix
    ./fzf.nix
    ./nix-search-tv.nix
    ./nix-your-shell.nix
    ./starship.nix
    ./television.nix
    ./zoxide.nix
  ];

  home.packages = with pkgs; [
    bat
    fd
    ripgrep
    tree
  ];

  home.sessionVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    # MANPAGER = "nvim +Man!";
    MANPAGER = "sh -c 'col -bx | bat -l man -p'";
    MANROFFOPT = "-c";
  };

  home.shellAliases = {
    "..." = "cd ../..";
    "grep" = "grep --color=auto";
    "vim" = "nvim";
    "ltree" = ''tree -a -F -I ".git" -L 4 --dirsfirst'';
  };
}
