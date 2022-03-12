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

  gecko-i386 = stdenv.mkDerivation rec {
    pname = "wine-gecko-i386";
    version = "2.47.1";
    src = fetchurl {
      url = "http://dl.winehq.org/wine/wine-gecko/${version}/wine-gecko-${version}-x86.tar.bz2";
      sha256 = "1ayidy0icxs1zz94h1nm8q29b7ddr3jq4chbraxhgvliygnhr806";
    };
    passthru.geckoDir = "wine-gecko-${version}-x86";

    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out
      tar xf ${src} -C $out
    '';
  };

  gecko-amd64 = stdenv.mkDerivation rec {
    pname = "wine-gecko-amd64";
    version = "2.47.1";
    src = fetchurl {
      url = "http://dl.winehq.org/wine/wine-gecko/${version}/wine-gecko-${version}-x86_64.tar.bz2";
      sha256 = "17n5ldhnwfxrqiwxy51bnm9r63jxdsdp9qaqcqia26hxr7j4clpa";
    };
    passthru.geckoDir = "wine-gecko-${version}-x86_64";

    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out
      tar xf ${src} -C $out
    '';
  };

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

      rm -rf $out/opt/deepin-wine5-stable/share/wine/gecko
      mkdir -p $out/opt/deepin-wine5-stable/share/wine/gecko
      ln -sf ${gecko-i386}/${gecko-i386.geckoDir} $out/opt/deepin-wine5-stable/share/wine/gecko/${gecko-i386.geckoDir}
      ln -sf ${gecko-amd64}/${gecko-amd64.geckoDir} $out/opt/deepin-wine5-stable/share/wine/gecko/${gecko-amd64.geckoDir}
    '';
  };
in
wrapper {
  pname = "deepin-wine5-stable";
  inherit version;
  deps = deps-amd64 ++ deps-i386;
  path = deepin-wine5-stable;
}
