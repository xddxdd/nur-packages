{ stdenvNoCC
, lib
, sources
, ...
} @ args:

stdenvNoCC.mkDerivation rec {
  inherit (sources.plangothic-fonts) pname version src;
  installPhase = ''
    mkdir -p $out/share/fonts/truetype/
    cp *.ttf $out/share/fonts/truetype/
  '';

  meta = with lib; {
    description = "Plangothic Project";
    homepage = "https://github.com/Fitzgerald-Porthmouth-Koenigsegg/Plangothic";
    license = licenses.ofl;
  };
}
