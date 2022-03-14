{ stdenv
, fetchurl
, writeShellScript
, writeShellScriptBin
, autoPatchelfHook
, patchelf
, steam
, lib
, pkgs
, ...
} @ args:

let
  version = "4.3.0";

  libraries = with pkgs; [
    libva
    stdenv.cc.cc.lib
    pciutils
  ];

  resource = stdenv.mkDerivation rec {
    pname = "baidunetdisk-resource";
    inherit version;
    src = fetchurl {
      url = "http://wppkg.baidupcs.com/issue/netdisk/Linuxguanjia/${version}/baidunetdisk_${version}_amd64.deb";
      sha256 = "sha256-Q6oK1O+P4X+mJZKjZr2VWYTXHlYyC1p7OrKu4LSb5eY=";
    };

    nativeBuildInputs = [ autoPatchelfHook patchelf ];
    buildInputs = [ stdenv.cc.cc.lib ];

    unpackPhase = ''
      ar x ${src}
    '';

    installPhase = ''
      mkdir -p $out
      tar xf data.tar.xz -C $out
      mv $out/usr/* $out/
      rm -rf $out/usr

      mkdir $out/lib
      mv $out/opt/baidunetdisk/libbrowserengine.so $out/lib/
      mv $out/opt/baidunetdisk/libkernel.so $out/lib/
      mv $out/opt/baidunetdisk/libminosagent.so $out/lib/
      mv $out/opt/baidunetdisk/libplayer.so $out/lib/

      # Workaround missing symbol pthread_mutexattr_init
      for F in $out/lib/*.so; do
        patchelf --add-needed libpthread.so.0 $F
      done

      mv $out/opt/baidunetdisk/resources $out/
      rm -rf $out/opt

      find $out/resources/ -maxdepth 1 -type f \
        -not -name app.asar\* \
        -not -name version \
        -exec rm {} \;
    '';
  };

  startScript = writeShellScriptBin "baidunetdisk" ''
    export LD_PRELOAD="${resource}/lib/libbrowserengine.so:${resource}/lib/libkernel.so"
    export LD_LIBRARY_PATH="${lib.makeLibraryPath libraries}:${resource}/lib:''${LD_LIBRARY_PATH}"
    ${pkgs.electron}/bin/electron \
      --no-sandbox \
      ${resource}/resources/app.asar
  '';
in
# resource
startScript
