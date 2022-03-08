{ stdenv
, fetchurl
, writeShellScript
, electron
, makeWrapper
, steam
, lib
, ...
} @ args:

################################################################################
# Mostly based on sukanka, from comment section of wechat-uos package from AUR:
# https://aur.archlinux.org/packages/wechat-uos#comment-844137
################################################################################

let
  version = "2.1.2";

  resource = stdenv.mkDerivation rec {
    pname = "wechat-kylin-resource";
    inherit version;
    src = fetchurl {
      url = "http://archive.ubuntukylin.com/ubuntukylin/pool/partner/weixin_${version}_amd64.deb";
      sha256 = "16hknzfylznc7yhyjdxpkf5b4b805fiblfrn8837chlz583728n0";
    };

    unpackPhase = ''
      ar x ${src}
    '';

    installPhase = ''
      mkdir -p $out
      tar xf data.tar.xz -C $out
      cp $out/etc/lsb-release-ukui $out/etc/lsb-release
      mv $out/usr/* $out/
      mv $out/opt/weixin/resources/app $out/lib/wechat-kylin
      rm -rf $out/opt $out/usr
    '';
  };

  steam-run = (steam.override {
    extraPkgs = p: [
      p.cups
      p.libgpgerror
      p.libselinux
      resource
    ];
    runtimeOnly = true;
  }).run;

  startScript = writeShellScript "wechat-kylin" ''
    ${steam-run}/bin/steam-run \
      ${electron}/bin/electron \
      ${resource}/lib/wechat-kylin
  '';
in
stdenv.mkDerivation {
  pname = "wechat-kylin";
  inherit version;
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin $out/share/applications
    ln -s ${startScript} $out/bin/wechat-kylin
    ln -s ${./wechat-kylin.desktop} $out/share/applications/wechat-kylin.desktop
    ln -s ${resource}/share/icons $out/share/icons
  '';

  meta = with lib; {
    description = "微信官方原生桌面版 WeChat desktop";
    homepage = "https://weixin.qq.com/";
    platforms = [ "x86_64-linux" ];
    license = licenses.unfreeRedistributable;
  };
}
