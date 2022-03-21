{ stdenv
, fetchurl
, writeShellScript
, writeShellScriptBin
, autoPatchelfHook
, makeWrapper
, patchelf
, steam
, lib
, pkgs
, ...
} @ args:

let
  version = "4.3.0";

  libraries = with pkgs; [
    alsa-lib
    at-spi2-atk
    at-spi2-core
    cairo
    cups
    dbus
    expat
    gdk-pixbuf
    glib
    gtk3
    libpulseaudio
    mesa_drivers
    nspr
    nss
    pango
    pciutils
    udev
    xorg.libX11
    xorg.libxcb
    xorg.libXcomposite
    xorg.libXcursor
    xorg.libXdamage
    xorg.libXext
    xorg.libXfixes
    xorg.libXi
    xorg.libXrandr
    xorg.libXrender
    xorg.libXScrnSaver
    xorg.libxshmfence
    xorg.libXtst
  ];
in
stdenv.mkDerivation rec {
  pname = "baidunetdisk-resource";
  inherit version;
  src = fetchurl {
    url = "http://wppkg.baidupcs.com/issue/netdisk/Linuxguanjia/${version}/baidunetdisk_${version}_amd64.deb";
    sha256 = "sha256-Q6oK1O+P4X+mJZKjZr2VWYTXHlYyC1p7OrKu4LSb5eY=";
  };

  nativeBuildInputs = [ autoPatchelfHook makeWrapper ];
  buildInputs = [ stdenv.cc.cc.lib ] ++ libraries;

  unpackPhase = ''
    ar x ${src}
  '';

  installPhase = ''
    mkdir -p $out
    tar xf data.tar.xz -C $out
    mv $out/usr/* $out/
    rm -rf $out/usr

    # Workaround missing symbol pthread_mutexattr_init
    for F in $out/opt/baidunetdisk/*.so; do
      patchelf --add-needed libpthread.so.0 $F
    done

    mkdir -p $out/bin
    makeWrapper $out/opt/baidunetdisk/baidunetdisk $out/bin/baidunetdisk \
      --argv0 "baidunetdisk" \
      --prefix LD_PRELOAD : "$out/opt/baidunetdisk/libbrowserengine.so:$out/opt/baidunetdisk/libkernel.so" \
      --prefix LD_LIBRARY_PATH : "$out/opt/baidunetdisk:${lib.makeLibraryPath libraries}"
  '';
}
