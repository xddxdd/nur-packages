{
  callPackage,
  linux_latest,
  ...
}:
let
  mkCachyKernel = callPackage ./mkCachyKernel.nix { };
in
{
  latest = mkCachyKernel {
    pname = "latest";
    inherit (linux_latest) version src;
    configVariant = "linux-cachyos";
  };
}
