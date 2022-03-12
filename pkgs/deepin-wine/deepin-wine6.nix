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

  gecko-i386 = stdenv.mkDerivation rec {
    pname = "wine-gecko-i386";
    version = "2.47.2";
    src = fetchurl {
      url = "http://dl.winehq.org/wine/wine-gecko/${version}/wine-gecko-${version}-x86.tar.xz";
      sha256 = "157akz7kqg6aja2a5rq096h3v2h39sxkwkj1xnzb1chh47m4dawg";
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
    version = "2.47.2";
    src = fetchurl {
      url = "http://dl.winehq.org/wine/wine-gecko/${version}/wine-gecko-${version}-x86_64.tar.xz";
      sha256 = "051hqc5k2shczbia2bdvsb2j7xjz6m7x7glqv9hk9wn3lh36fixl";
    };
    passthru.geckoDir = "wine-gecko-${version}-x86_64";

    phases = [ "installPhase" ];
    installPhase = ''
      mkdir -p $out
      tar xf ${src} -C $out
    '';
  };

  gecko = stdenv.mkDerivation rec {
    pname = "wine-gecko";
    version = "2.47.2";
    src = fetchurl {
      url = "http://dl.winehq.org/wine/wine-gecko/${version}/wine-gecko-${version}-x86.tar.xz";
      sha256 = "157akz7kqg6aja2a5rq096h3v2h39sxkwkj1xnzb1chh47m4dawg";
    };
    dontUnpack = true;
    installPhase = ''
      mkdir -p $out
      tar xf ${src} -C $out
    '';
    passthru.geckoDir = "wine-gecko-${version}-x86_64";
  };

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

      rm -rf $out/opt/deepin-wine6-stable/share/wine/gecko
      mkdir -p $out/opt/deepin-wine6-stable/share/wine/gecko
      ln -sf ${gecko-i386}/${gecko-i386.geckoDir} $out/opt/deepin-wine6-stable/share/wine/gecko/${gecko-i386.geckoDir}
      ln -sf ${gecko-amd64}/${gecko-amd64.geckoDir} $out/opt/deepin-wine6-stable/share/wine/gecko/${gecko-amd64.geckoDir}
    '';
  };
in
wrapper {
  pname = "deepin-wine6-stable";
  inherit version;
  deps = deps-amd64 ++ deps-i386;
  path = deepin-wine6-stable;
}
