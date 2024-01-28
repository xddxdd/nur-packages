{
  stdenv,
  sources,
  electron,
  lib,
  makeWrapper,
  ...
} @ args:
stdenv.mkDerivation rec {
  inherit (sources.bilibili) pname version src;

  unpackPhase = ''
    ar x $src
    tar xf data.tar.xz
  '';

  buildInputs = [makeWrapper];

  installPhase = ''
    mkdir -p $out/bin

    cp -r usr/share $out/share
    sed -i "s|Exec=.*|Exec=$out/bin/bilibili|" $out/share/applications/*.desktop

    cp -r opt/apps/io.github.msojocs.bilibili/files/bin/app $out/opt

    makeWrapper ${electron}/bin/electron $out/bin/bilibili \
      --argv0 "bilibili" \
      --add-flags "$out/opt/app.asar" \
      --add-flags "\''${NIXOS_OZONE_WL:+\''${WAYLAND_DISPLAY:+--enable-features=UseOzonePlatform --ozone-platform=wayland}}"
  '';

  meta = with lib; {
    description = "Bilibili desktop client";
    homepage = "https://app.bilibili.com/";
    license = licenses.unfreeRedistributable;
  };
}
