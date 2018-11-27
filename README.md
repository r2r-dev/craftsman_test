Example of mixing nix with bazel for docker builds.

run:
```
nix-shell shell.nix
bazel run @craftsman_base//image
```
to import effective image.