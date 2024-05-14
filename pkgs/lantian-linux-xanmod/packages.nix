{
  callPackage,
  lib,
  linuxKernel,
  ...
}@args:
let
  kernels = callPackage ./default.nix args;
in
lib.mapAttrs (_n: v: linuxKernel.packagesFor v) kernels
