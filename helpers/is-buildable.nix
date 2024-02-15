{
  lib,
  system,
  callPackage,
  ...
}: let
  flattenPkgs = callPackage ./flatten-pkgs.nix {};
  inherit (flattenPkgs) isDerivation isPlatform;
in rec {
  isBuildable = isBuildableOnPlatform system;

  isBuildableOnPlatform = platform: p:
    (isDerivation p)
    && !(p.meta.broken or false)
    && !(p.preferLocalBuild or false)
    && (isPlatform platform p);
}
