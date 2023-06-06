{
  lib,
  sources,
  stdenv,
  python3,
  makeWrapper,
  ...
}: let
  python = python3.withPackages (p:
    with p; [
      dateutils
      fastapi
      markdown
      pycryptodome
      python-dotenv
      python-jose
      sqlalchemy
      uvicorn
    ]);
in
  stdenv.mkDerivation {
    inherit (sources.fastapi-dls) pname version src;

    nativeBuildInputs = [makeWrapper];

    installPhase = ''
      mkdir -p $out/bin $out/opt
      cp -r app/* $out/opt/

      makeWrapper ${python}/bin/python $out/bin/fastapi-dls \
        --add-flags "-m" \
        --add-flags "uvicorn" \
        --add-flags "--app-dir" \
        --add-flags "$out/opt" \
        --add-flags "main:app" \
    '';

    meta = with lib; {
      description = "Minimal Delegated License Service (DLS)";
      homepage = "https://gitea.publichub.eu/oscar.krause/fastapi-dls";
      license = licenses.unfree;
    };
  }
