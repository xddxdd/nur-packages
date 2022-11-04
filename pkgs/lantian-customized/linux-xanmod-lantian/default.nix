{ pkgs
, stdenv
, lib
, fetchFromGitHub
, buildLinux
, lto ? false
, ...
} @ args:

# https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/os-specific/linux/kernel/linux-xanmod.nix
let
  version = "6.0.6";
  release = "1";

  # https://github.com/NixOS/nixpkgs/pull/129806
  stdenvLLVM =
    let
      llvmPin = pkgs.llvmPackages_latest.override {
        bootBintools = null;
        bootBintoolsNoLibc = null;
      };

      stdenv' = pkgs.overrideCC llvmPin.stdenv llvmPin.clangUseLLVM;
    in
    stdenv'.override {
      extraNativeBuildInputs = with llvmPin; [ lld ];
    };
in
buildLinux {
  inherit lib version;

  stdenv = if lto then stdenvLLVM else stdenv;
  extraMakeFlags = lib.optionals lto [ "LLVM=1" "LLVM_IAS=1" ];

  src = fetchFromGitHub {
    owner = "xanmod";
    repo = "linux";
    rev = "${version}-xanmod${release}";
    sha256 = "sha256-JMfAtiPDgoVF+ypeFXev06PL39ZM2H7m07IxpasjAoM=";
  };
  modDirVersion = "${version}-lantian-xanmod${release}";

  structuredExtraConfig =
    let
      cfg = import ./config.nix args;
    in
    if lto then
      ((builtins.removeAttrs cfg [ "GCC_PLUGINS" "FORTIFY_SOURCE" ]) // (with lib.kernel; {
        LTO_NONE = no;
        LTO_CLANG_FULL = yes;
      })) else cfg;

  kernelPatches = [
    pkgs.kernelPatches.bridge_stp_helper
    pkgs.kernelPatches.request_key_helper
  ] ++ (builtins.map
    (name: {
      inherit name;
      patch = ./patches + "/${name}";
    })
    (builtins.attrNames (builtins.readDir ./patches)));

  extraMeta.broken = !stdenv.hostPlatform.isx86_64;
}
