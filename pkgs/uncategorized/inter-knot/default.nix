{
  sources,
  lib,
  stdenv,
  autoPatchelfHook,
  makeWrapper,
  unzip,
  imagemagick,
  copyDesktopItems,
  makeDesktopItem,
  # Dependencies
  at-spi2-atk,
  cairo,
  gdk-pixbuf,
  glib,
  gtk3,
  harfbuzz,
  pango,
  ...
}:
stdenv.mkDerivation {
  inherit (sources.inter-knot) pname version src;

  nativeBuildInputs = [
    autoPatchelfHook
    makeWrapper
    unzip
    imagemagick
    copyDesktopItems
  ];

  buildInputs = [
    at-spi2-atk
    cairo
    gdk-pixbuf
    glib
    gtk3
    harfbuzz
    pango
    stdenv.cc.cc.lib
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin $out/opt
    cp -r * $out/opt/
    chmod +x $out/opt/inter-knot
    makeWrapper $out/opt/inter-knot $out/bin/inter-knot

    mkdir -p $out/share/pixmaps
    convert \
      -depth 24 \
      -define png:compression-filter=1 \
      -define png:compression-level=9 \
      -define png:compression-strategy=2 \
      ${./icon.webp} $out/share/pixmaps/inter-knot.png

    runHook postInstall
  '';

  desktopItems = [
    (makeDesktopItem {
      name = "inter-knot";
      exec = "inter-knot";
      icon = "inter-knot";
      desktopName = "绳网";
      comment = "绳网是一个游戏、技术交流平台";
      categories = [ "Network" ];
    })
  ];

  meta = {
    maintainers = with lib.maintainers; [ xddxdd ];
    description = "绳网是一个游戏、技术交流平台";
    homepage = "https://inot.top";
    license = lib.licenses.mit;
    platforms = [ "x86_64-linux" ];
  };
}
