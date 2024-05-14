{
  lib,
  sources,
  amule,
  ...
}:
amule.overrideAttrs (_old: {
  inherit (sources.amule-dlp) pname version src;
  patches = [ ];
})
