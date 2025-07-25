{
  lib,
  sources,
  stdenvNoCC,
}:
stdenvNoCC.mkDerivation (finalAttrs: {
  inherit (sources.plasma-smart-video-wallpaper-reborn) pname version src;

  postInstall = ''
    mkdir -p $out/share/plasma/wallpapers/luisbocanegra.smart.video.wallpaper.reborn
    cp -r package/* $out/share/plasma/wallpapers/luisbocanegra.smart.video.wallpaper.reborn
  '';

  meta = {
    changelog = "https://github.com/luisbocanegra/plasma-smart-video-wallpaper-reborn/releases/tag/v${finalAttrs.version}";
    maintainers = with lib.maintainers; [ xddxdd ];
    description = "Plasma 6 wallpaper plugin to play videos on your Desktop/Lock Screen";
    homepage = "https://store.kde.org/p/2139746";
    license = lib.licenses.gpl2Only;
  };
})
