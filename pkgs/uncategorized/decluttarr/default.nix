{
  stdenvNoCC,
  sources,
  lib,
  python3,
  makeWrapper,
  ...
}:
let
  py = python3.withPackages (
    p: with p; [
      requests
      dateutil
      verboselogs
      pytest
      pytest-asyncio
    ]
  );
in
stdenvNoCC.mkDerivation rec {
  inherit (sources.decluttarr) pname version src;

  nativeBuildInputs = [ makeWrapper ];

  installPhase = ''
    mkdir -p $out/bin
    makeWrapper ${py}/bin/python3 $out/bin/decluttarr \
      --add-flags $src/main.py
  '';

  meta = with lib; {
    maintainers = with lib.maintainers; [ xddxdd ];
    description = "Watches radarr, sonarr, lidarr and readarr download queues and removes downloads if they become stalled or no longer needed.";
    homepage = "https://github.com/ManiMatter/decluttarr";
    license = with licenses; [ gpl3Only ];
  };
}
