{ stdenv
, fetchurl
, writeShellScript
, autoPatchelfHook
, steam
, lib
, pkgs
, ...
} @ args:

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
      mv $out/usr/* $out/
      rm -rf $out/usr
    '';
  };

  steam-run = (steam.override {
    extraPkgs = p: [ resource ];
    runtimeOnly = true;
  }).run;

  startScript = writeShellScript "baidunetdisk" ''
    export LD_PRELOAD=${pkgs.sqlcipher}/lib/libsqlcipher.so
    export LD_LIBRARY_PATH="${resource}/lib:''${LD_LIBRARY_PATH}"
    ${pkgs.electron}/bin/electron \
      --no-sandbox \
      ${resource}/resources/app.asar
  '';
in
resource
# startScript
