{
  stdenv,
  lib,
  ...
}: packages:
# Utility to build all derivations in `packages`.
# Passthru everything in `packages` even if not a derivation.
let
  packages' = lib.filterAttrs (k: v: lib.isDerivation v) packages;
in
stdenv.mkDerivation {
  pname = "merged-" + lib.concatStringsSep "-" (builtins.attrNames packages');
  version = "1.0.0";
  phases = ["installPhase"];
  installPhase =
    ''
      mkdir -p $out
    ''
    + lib.concatStringsSep "\n" (lib.mapAttrsToList (k: v: "ln -s ${v} $out/${k}") packages');

  passthru = packages;
}
