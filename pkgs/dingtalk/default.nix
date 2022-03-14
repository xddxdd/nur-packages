{ stdenv
, fetchurl
, autoPatchelfHook
, writeShellScript
, lib
, pkgs
, ...
} @ args:

################################################################################
# Mostly based on dingtalk-bin package from AUR:
# https://aur.archlinux.org/packages/dingtalk-bin
################################################################################

let
  version = "1.3.0.20214";

  libraries = with pkgs; [
    alsa-lib
    at-spi2-atk
    at-spi2-core
    cairo
    cups
    dbus
    e2fsprogs
    gdk-pixbuf
    glib
    gnutls
    graphite2
    gtk2
    libdrm
    libgcrypt
    libGLU
    libpulseaudio
    libthai
    libxkbcommon
    mesa_drivers
    nspr
    nss
    openldap
    rtmpdump
    udev
    util-linux
    xorg.libICE
    xorg.libSM
    xorg.libX11
    xorg.libxcb
    xorg.libXcomposite
    xorg.libXcursor
    xorg.libXdamage
    xorg.libXext
    xorg.libXfixes
    xorg.libXi
    xorg.libXinerama
    xorg.libXmu
    xorg.libXrandr
    xorg.libXrender
    xorg.libXScrnSaver
    xorg.libXt
    xorg.libXtst
  ];

  resource = stdenv.mkDerivation rec {
    pname = "dingtalk-resource";
    inherit version;
    src = fetchurl {
      url = "https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_${version}_amd64.deb";
      sha256 = "1j1fikyp3van1b8d41viyll12pj2m0w8zm2y5szsbsq7vjsi1xda";
    };

    nativeBuildInputs = [ autoPatchelfHook ];
    buildInputs = libraries;

    unpackPhase = ''
      ar x ${src}
    '';

    installPhase = ''
      mkdir -p $out
      tar xf data.tar.xz -C $out
      mv $out/opt/apps/com.alibabainc.dingtalk/files/version $out/
      mv $out/opt/apps/com.alibabainc.dingtalk/files/*-Release.* $out/release
      rm -rf $out/opt $out/usr

      # Cleanup
      mkdir $out/lib
      mv $out/release/*.so $out/release/*.so.* $out/lib/
      rm -f $out/lib/libgtk-x11-2.0.so.*
      rm -f $out/lib/libm.so.*
      for F in $out/lib/*; do
        ln -sf $F $out/release/$(basename $F)
      done
      rm -rf $out/release/Resources/{i18n/tool/*.exe,qss/mac}
    '';
  };

  startScript = writeShellScript "dingtalk" ''
    cd ${resource}/release
    export LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath libraries}:''${LD_LIBRARY_PATH}"
    ./com.alibabainc.dingtalk
  '';
in
stdenv.mkDerivation {
  pname = "dingtalk";
  inherit version;
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin $out/share/applications $out/share/pixmaps
    ln -s ${startScript} $out/bin/dingtalk
    ln -s ${./dingtalk.desktop} $out/share/applications/dingtalk.desktop
    ln -s ${./dingtalk.png} $out/share/pixmaps/dingtalk.png
  '';

  meta = with lib; {
    description = "钉钉";
    homepage = "https://www.dingtalk.com/";
    platforms = [ "x86_64-linux" ];
    license = licenses.unfreeRedistributable;
  };
}
