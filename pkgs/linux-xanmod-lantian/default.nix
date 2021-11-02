{
  stdenv, lib,
  fetchFromGitHub,
  linuxManualConfig,
  linuxKernel,
  kernelPatches ? [],
  ...
}:
# with import <nixpkgs> {};

# https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/os-specific/linux/kernel/linux-xanmod.nix
linuxManualConfig rec {
  inherit stdenv lib kernelPatches;
  inherit (linuxKernel.kernels.linux_xanmod) version src;

  modDirVersion = "${linuxKernel.kernels.linux_xanmod.modDirVersion}-lantian";
  configfile = ./config;
  config = stdenv.mkDerivation {
    name = "linux-xanmod-lantian.config";
    src = ./config;
    phases = [ "buildPhase" ];
    buildPhase = ''
      echo "{" > "$out"
      while IFS='=' read key val; do
        [ "x''${key#CONFIG_}" != "x$key" ] || continue
        no_firstquote="''${val#\"}";
        echo '  "'"$key"'" = "'"''${no_firstquote%\"}"'";' >> "$out"
      done < "${configfile}"
      echo "}" >> $out
    '';
  };
  allowImportFromDerivation = true;
}
