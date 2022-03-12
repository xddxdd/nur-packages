{ stdenv
, fetchurl
, callPackage
, pkgs
, pkgsi686Linux
, autoPatchelfHook
, ...
} @ args:

let
  version = "5.0.34-1";

  deps-amd64 = callPackage ./deps-amd64.nix { };
  deps-i386 = callPackage ./deps-i386.nix { };
  wrapper = callPackage ./wrapper.nix { };

  deepin-wine5-stable-i386 = pkgsi686Linux.stdenv.mkDerivation rec {
    pname = "deepin-wine5-stable-i386";
    inherit version;
    src = fetchurl {
      url = "https://community-store-packages.deepin.com/appstore/pool/appstore/d/deepin-wine5-stable/deepin-wine5-stable-i386_${version}_i386.deb";
      sha256 = "sha256-Y2ZEHh8gF+fw+98oeYOyH9RMK+DpejtuNggfRaVVDBI=";
    };

    nativeBuildInputs = [ autoPatchelfHook ];
    buildInputs = deps-i386;

    dontUnpack = true;
    dontPatchELF = true;
    dontStrip = true;
    installPhase = ''
      mkdir -p $out
      ar x ${src}
      tar xf data.tar.xz -C $out
      mv $out/usr/* $out/
      rm -rf $out/usr
    '';
  };

  deepin-wine5-stable-amd64 = stdenv.mkDerivation rec {
    pname = "deepin-wine5-stable-amd64";
    inherit version;
    src = fetchurl {
      url = "https://community-store-packages.deepin.com/appstore/pool/appstore/d/deepin-wine5-stable/deepin-wine5-stable-amd64_${version}_amd64.deb";
      sha256 = "sha256-27abvsvD51hQDJLcRlaTbFTyDITjHFoQWrKTJtBDdaY=";
    };

    nativeBuildInputs = [ autoPatchelfHook ];
    buildInputs = deps-amd64;

    dontUnpack = true;
    dontPatchELF = true;
    dontStrip = true;
    installPhase = ''
      mkdir -p $out
      ar x ${src}
      tar xf data.tar.xz -C $out
      mv $out/usr/* $out/
      rm -rf $out/usr
    '';
  };

  deepin-wine5-stable = stdenv.mkDerivation rec {
    pname = "deepin-wine5-stable";
    inherit version;
    src = fetchurl {
      url = "https://community-store-packages.deepin.com/appstore/pool/appstore/d/deepin-wine5-stable/deepin-wine5-stable_${version}_amd64.deb";
      sha256 = "sha256-QOA3HWQQIpXsNCbpBY35dD40GVBaHrTsZ1tjBd3Q8C4=";
    };

    nativeBuildInputs = [ autoPatchelfHook ];

    dontUnpack = true;
    dontPatchELF = true;
    dontStrip = true;
    installPhase = ''
      mkdir -p $out
      ar x ${src}
      tar xf data.tar.xz -C $out
      mv $out/usr/* $out/
      rm -rf $out/bin $out/usr

      cp -r ${deepin-wine5-stable-i386}/* $out/
      cp -r ${deepin-wine5-stable-amd64}/* $out/
    '';
  };
in
wrapper {
  pname = "deepin-wine5-stable";
  inherit version;
  deps = deps-amd64 ++ deps-i386;
  path = deepin-wine5-stable;
}
