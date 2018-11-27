{ pkgs ? import <nixpkgs> {}
,  ndn ? import <ndn> {} # ndn name comes from repository override in WORKSPACE
}:
let
  extras = [];
in {
  inherit extras;

  # need to wrap final image, bcs rules_nixpks cannot build
  # expressions yielding single result
  image = pkgs.stdenv.mkDerivation {
    name = "ndnImage";
    src = ndn.docker.noSandbox;
    installPhase = ''
      mkdir $out
      cp -r $src $out/image
    '';
  };
}
