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

  deepin-udis86 = pkgsi686Linux.callPackage ./deepin-udis86 { };
  libpcap0_8 = callPackage ./libpcap0_8 { };
  libpcap0_8-i386 = pkgsi686Linux.callPackage ./libpcap0_8 { };
  vkd3d = callPackage ./vkd3d { };
  vkd3d-i386 = pkgsi686Linux.callPackage ./vkd3d { };
  wrapper = callPackage ./wrapper.nix { };

  deepin-wine6-stable-i386 = pkgsi686Linux.stdenv.mkDerivation rec {
    pname = "deepin-wine6-stable-i386";
    inherit version;
    src = fetchurl {
      url = "https://community-store-packages.deepin.com/appstore/pool/appstore/d/deepin-wine6-stable/deepin-wine6-stable-i386_${version}_i386.deb";
      sha256 = "0bxca3j72bs4vzvdkhs5kmjpbvx3z8x6c08655lgaxl6713chmkl";
    };

    nativeBuildInputs = [ autoPatchelfHook ];
    buildInputs = (with pkgsi686Linux; [
      alsa-lib
      atk
      cairo
      gdk-pixbuf
      glib
      gst_all_1.gst-plugins-base
      gtk3
      lcms2
      libgphoto2
      libpulseaudio
      libusb
      mpg123
      ocl-icd
      openal
      openldap
      pango
      udev
      xml2
      xorg.libX11
      xorg.libXext
    ]) ++ [
      deepin-udis86
      libpcap0_8-i386
      vkd3d-i386
    ];

    dontUnpack = true;
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
    buildInputs = (with pkgs; [
      alsa-lib
      atk
      cairo
      gdk-pixbuf
      glib
      gst_all_1.gst-plugins-base
      gtk3
      lcms2
      libgphoto2
      libpulseaudio
      libusb
      mpg123
      ocl-icd
      openal
      openldap
      pango
      udev
      xml2
      xorg.libX11
      xorg.libXext
    ]) ++ [
      libpcap0_8
      vkd3d
    ];

    dontUnpack = true;
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
  path = deepin-wine6-stable;
}
