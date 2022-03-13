{ stdenv
, fetchurl
, writeShellScript
, steam
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

  resource = stdenv.mkDerivation rec {
    pname = "dingtalk-resource";
    inherit version;
    src = fetchurl {
      url = "https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_${version}_amd64.deb";
      sha256 = "1j1fikyp3van1b8d41viyll12pj2m0w8zm2y5szsbsq7vjsi1xda";
    };

    unpackPhase = ''
      ar x ${src}
    '';

    installPhase = ''
      mkdir -p $out
      tar xf data.tar.xz -C $out
      mv $out/opt/apps/com.alibabainc.dingtalk/files/*-Release.* $out/release
      rm -rf $out/opt $out/usr

      # Cleanup
      rm -rf $out/release/libgtk-x11-2.0.so.*
      rm -rf $out/release/libm.so.6
      rm -rf $out/release/Resources/{i18n/tool/*.exe,qss/mac}
    '';
  };

  steam-run = (steam.override {
    extraPkgs = p: [ resource ] ++ (with p; [
      gnutls
    ]);
    runtimeOnly = true;
  }).run;

  startScript = writeShellScript "dingtalk" ''
    ${steam-run}/bin/steam-run \
      /bin/sh -c \
      "cd ${resource}/release && ./com.alibabainc.dingtalk"
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
