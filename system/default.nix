{ lib, ... }:

let
  allFiles = lib.filesystem.listFilesRecursive ./.;

  isNixModule =
    file:
    lib.hasSuffix ".nix" (toString file)
    && !lib.hasPrefix "_" (baseNameOf file)
    && baseNameOf file != "default.nix";

  importTree = lib.filter isNixModule allFiles;
in

{
  imports = importTree;
}
