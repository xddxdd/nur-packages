{
  stdenvNoCC,
  sources,
  lib,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  inherit (sources.rime-moegirl) pname version src;

  dontUnpack = true;
  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/rime-data
    cp $src $out/share/rime-data/moegirl.dict.yaml

    runHook postInstall
  '';

  meta = {
    changelog = "https://github.com/outloudvi/mw2fcitx/releases/tag/${finalAttrs.version}";
    maintainers = with lib.maintainers; [ xddxdd ];
    description = "RIME dictionary file for entries from zh.moegirl.org.cn";
    homepage = "https://github.com/outloudvi/mw2fcitx/releases";
    license = with lib.licenses; [
      unlicense # the tool packaging dictionary
      cc-by-nc-sa-30 # moegirl wiki itself
    ];
  };
})
