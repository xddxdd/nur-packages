{ stdenv
, fetchurl
, autoPatchelfHook
, ...
} @ args:

stdenv.mkDerivation rec {
  pname = "deepin-udis86";
  version = "1.72-4";
  src = fetchurl {
    url = "https://community-packages.deepin.com/deepin/pool/non-free/u/udis86/udis86_${version}_i386.deb";
    sha256 = "sha256-7IdOzfEvldY0wDik3SkVlRquCXU/S6ulCyB00VTgQ3Q=";
  };

  dontUnpack = true;
  nativeBuildInputs = [ autoPatchelfHook ];

  installPhase = ''
    mkdir -p $out
    ar x ${src}
    tar xf data.tar.xz -C $out
    mv $out/usr/* $out/
    rm -rf $out/usr
  '';
}
