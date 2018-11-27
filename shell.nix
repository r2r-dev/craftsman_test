{ pkgs ? import ./nixpkgs {} }:

with pkgs;

mkShell {

  buildInputs = [
    go
    graphviz
    nix
    which
    python
    python36Packages.sphinx
    zip
    unzip
    bazel
    git
  ];
}