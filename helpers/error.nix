{
  stdenv,
  lib,
  ...
}: pname: message:
# Utility to build all derivations in `packages`.
# Passthru everything in `packages` even if not a derivation.
stdenv.mkDerivation {
  inherit pname;
  version = "package-unavailable";
  phases = ["installPhase"];
  installPhase = ''
    echo "${message}"
    exit 1
  '';

  meta.broken = true;

  passthru = {
    inherit message;
  };
}
