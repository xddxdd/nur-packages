{ stdenv
, fetchurl
, writeShellScriptBin
, bubblewrap
, electron
, autoPatchelfHook
, makeWrapper
, openssl
, lib
, ffmpeg
, xorg
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

  libraries = lib.makeLibraryPath [
    ffmpeg
    openssl
    stdenv.cc.cc.lib
    xorg.libX11
    xorg.libxcb
  ];

  resource = stdenv.mkDerivation rec {
    pname = "wechat-uos-resource";
    inherit version;
    src = fetchurl {
      url = "https://home-store-packages.uniontech.com/appstore/pool/appstore/c/com.tencent.weixin/com.tencent.weixin_${version}_amd64.deb";
      sha256 = "13dyzq20wbirif5lvrzxyxyxf94134dlbjf76zhyhssxvi3jj5lz";
    };

    nativeBuildInputs = [ autoPatchelfHook makeWrapper ];

    buildInputs = [ openssl stdenv.cc.cc.lib ];

    unpackPhase = ''
      ar x ${src}
    '';

    installPhase = ''
      mkdir -p $out
      tar xf data.tar.xz -C $out
      mv $out/usr/* $out/
      mv $out/opt/apps/com.tencent.weixin/files/weixin/resources/app $out/lib/wechat-uos
      rm -rf $out/opt $out/usr $out/share/applications
      ln -sf $out/lib/license/libuosdevicea1.so $out/lib/license/libuosdevicea.so

      mkdir $out/bin
      makeWrapper ${electron}/bin/electron $out/bin/wechat-uos \
        --argv0 wechat-uos \
        --add-flags "--enable-logging" \
        --add-flags $out/lib/wechat-uos \
        --set ELECTRON_ENABLE_LOGGING "1" \
        --prefix LD_LIBRARY_PATH : "${libraries}:$out/lib/license" \
    '';
  };

  entrypoint = writeShellScriptBin "wechat-uos" ''
    ${bubblewrap}/bin/bwrap \
      --dev-bind / / \
      --bind ${license}/etc /etc \
      --bind ${license}/var /var \
      --bind ${resource} /usr \
      strace -f ${resource}/bin/wechat-uos "$@"
  '';
in
entrypoint
