{ stdenv
, fetchurl
, callPackage
, pkgs
, pkgsi686Linux
, autoPatchelfHook
, ...
} @ args:

let
  version = "6.0.0.19-1";

  deps-amd64 = callPackage ./deps-amd64.nix { };
  deps-i386 = callPackage ./deps-i386.nix { };
  wrapper = callPackage ./wrapper.nix { };

  deepin-wine6-stable-i386 = pkgsi686Linux.stdenv.mkDerivation rec {
    pname = "deepin-wine6-stable-i386";
    inherit version;
    src = fetchurl {
      url = "https://community-store-packages.deepin.com/appstore/pool/appstore/d/deepin-wine6-stable/deepin-wine6-stable-i386_${version}_i386.deb";
      sha256 = "0bxca3j72bs4vzvdkhs5kmjpbvx3z8x6c08655lgaxl6713chmkl";
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

  deepin-wine6-stable-amd64 = stdenv.mkDerivation rec {
    pname = "deepin-wine6-stable-amd64";
    inherit version;
    src = fetchurl {
      url = "https://community-store-packages.deepin.com/appstore/pool/appstore/d/deepin-wine6-stable/deepin-wine6-stable-amd64_${version}_amd64.deb";
      sha256 = "05z89gbq2dgn68qkx12i1iv7hwh6wv0kbh1qy4v6iwwr8r8157n4";
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

  deepin-wine6-stable = stdenv.mkDerivation rec {
    pname = "deepin-wine6-stable";
    inherit version;
    src = fetchurl {
      url = "https://community-store-packages.deepin.com/appstore/pool/appstore/d/deepin-wine6-stable/deepin-wine6-stable_${version}_amd64.deb";
      sha256 = "03wilaqlmfhr0ra9kngg270qpjfz43ngx80h3sd6sr37hhmvbh70";
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

      cp -r ${deepin-wine6-stable-i386}/* $out/
      cp -r ${deepin-wine6-stable-amd64}/* $out/
    '';
  };
in
wrapper {
  pname = "deepin-wine6-stable";
  inherit version;
  deps = deps-amd64 ++ deps-i386;
  path = deepin-wine6-stable;
}
