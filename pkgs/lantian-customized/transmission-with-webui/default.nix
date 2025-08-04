{
  sources,
  lib,
  transmission_4,
}:
transmission_4.overrideAttrs (old: {
  inherit (sources.transmission) version src;
  patches = [ ];

  postPatch = builtins.replaceStrings [ "jsonsl" ] [ "rapidjson|small" ] old.postPatch;

  postInstall =
    (builtins.replaceStrings [ "qt/icons/transmission.svg" ] [ "icons/transmission.ico" ] (
      old.postInstall or ""
    ))
    + ''
      mv $out/share/transmission/public_html/index.html $out/share/transmission/public_html/index.original.html
      cp -r ${sources.transmission-web-control.src}/src/* $out/share/transmission/public_html/
    '';

  meta = old.meta // {
    maintainers = with lib.maintainers; [ xddxdd ];
  };
})
