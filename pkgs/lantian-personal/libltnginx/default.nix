{
  lib,
  stdenv,
  sources,
  cmake,
  ...
}@args:
stdenv.mkDerivation rec {
  inherit (sources.libltnginx) pname version src;

  enableParallelBuilding = true;

  installPhase = ''
    install -Dm755 libltnginx.so $out/lib/libltnginx.so
  '';

  nativeBuildInputs = [ cmake ];
}
