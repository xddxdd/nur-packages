{ stdenv
, fetchurl
, writeShellScriptBin
, electron
, makeWrapper
, steam
, ...
} @ args:

let
  version = "2.1.2";

  license = stdenv.mkDerivation rec {
    pname = "wechat-uos-license";
    version = "0.0.1";
    src = ./license.tar.gz;

    installPhase = ''
      mkdir -p $out
      cp -r etc var $out/
    '';
  };

  resource = stdenv.mkDerivation rec {
    pname = "wechat-uos-resource";
    inherit version;
    src = fetchurl {
      url = "https://home-store-packages.uniontech.com/appstore/pool/appstore/c/com.tencent.weixin/com.tencent.weixin_${version}_amd64.deb";
      sha256 = "13dyzq20wbirif5lvrzxyxyxf94134dlbjf76zhyhssxvi3jj5lz";
    };

    unpackPhase = ''
      ar x ${src}
    '';

    installPhase = ''
      mkdir -p $out
      tar xf data.tar.xz -C $out
      mv $out/usr/* $out/
      mv $out/opt/apps/com.tencent.weixin/files/weixin/resources/app $out/lib/wechat-uos
      ln -sf $out/lib/license/libuosdevicea1.so $out/lib/license/libuosdevicea.so
      rm -rf $out/opt $out/usr
    '';
  };

  steam-run = (steam.override {
    extraPkgs = p: [ license resource ];
    runtimeOnly = true;
  }).run;
in
writeShellScriptBin "wechat-uos" ''
  ${steam-run}/bin/steam-run \
    ${electron}/bin/electron \
    ${resource}/lib/wechat-uos
''
