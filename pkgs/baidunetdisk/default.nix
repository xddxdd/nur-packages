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
  version = "4.3.0";

  resource = stdenv.mkDerivation rec {
    pname = "baidunetdisk-resource";
    inherit version;
    src = fetchurl {
      url = "http://wppkg.baidupcs.com/issue/netdisk/Linuxguanjia/${version}/baidunetdisk_${version}_amd64.deb";
      sha256 = "sha256-Q6oK1O+P4X+mJZKjZr2VWYTXHlYyC1p7OrKu4LSb5eY=";
    };

    nativeBuildInputs = [ autoPatchelfHook ];
    buildInputs = [ stdenv.cc.cc.lib ];
    # buildInputs = with pkgs; [
    #   alsa-lib
    #   at-spi2-atk
    #   at-spi2-core
    #   atk
    #   cairo
    #   cups
    #   dbus
    #   expat
    #   gdk-pixbuf
    #   glib
    #   gtk3
    #   libdrm
    #   mesa_drivers
    #   nspr
    #   nss
    #   nss
    #   pango
    #   stdenv.cc.cc.lib
    #   xorg.libX11
    #   xorg.libxcb
    #   xorg.libXcomposite
    #   xorg.libXcursor
    #   xorg.libXdamage
    #   xorg.libXext
    #   xorg.libXfixes
    #   xorg.libXi
    #   xorg.libXrandr
    #   xorg.libXrender
    #   xorg.libXScrnSaver
    #   xorg.libXtst
    # ];

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

      mv $out/opt/baidunetdisk/resources $out/
      rm -rf $out/opt
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
# resource
startScript
