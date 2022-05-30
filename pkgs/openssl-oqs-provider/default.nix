{ lib
, stdenv
, sources
, cmake
, liboqs
, openssl_3_0
, ...
} @ args:

stdenv.mkDerivation rec {
  inherit (sources.openssl-oqs-provider) pname version src;

  enableParallelBuilding = true;
  dontFixCmake = true;

  nativeBuildInputs = [
    cmake
  ];

  buildInputs = [
    liboqs
    openssl_3_0
  ];

  cmakeFlags = [ "-DCMAKE_BUILD_TYPE=Release"];

  installPhase = ''
    mkdir -p $out/lib
    install -m755 oqsprov/oqsprovider.so "$out/lib"
  '';

  meta = with lib; {
    description = "C library for prototyping and experimenting with quantum-resistant cryptography";
    homepage = "https://openquantumsafe.org";
    license = with licenses; [ mit ];
  };
}
