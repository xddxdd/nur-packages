{ stdenv

  # WeChat replaces this download link with newer versions from time to time.
  # This package will inevitably break by then, but there's nothing I can do.
  # If that happens, change these two parameters.
, version ? "3.5.0.46"
, sha256 ? "0alrpl74xzh9v1r093gkam6dvivjf9fy4897f3l40f13qi130pgz"

, autoPatchelfHook
, pkgsi686Linux
, fetchurl
, lib
, p7zip
, deepin-wine6
, winetricks
, writeShellScript
, writeText
, ...
}:

################################################################################
# Some assets are copied from AUR:
# https://aur.archlinux.org/packages/deepin-wine-wechat
#
# Known issues:
# - In-app browser doesn't work.
################################################################################

let
  deepinWineEnvironment = stdenv.mkDerivation rec {
    pname = "deepin-wine-environment";
    version = "3.4.0.38deepin4";
    src = fetchurl {
      url = "https://com-store-packages.uniontech.com/appstore/pool/appstore/c/com.qq.weixin.deepin/com.qq.weixin.deepin_${version}_i386.deb";
      sha256 = "0bfwc4vlzzaihszwlkd5jw0wayz269060pg5f6n5wg56x54i02q6";
    };
    nativeBuildInputs = [ autoPatchelfHook ];
    buildInputs = with pkgsi686Linux; [ xorg.libX11 xorg.libXext ];

    dontUnpack = true;
    dontPatchELF = true;
    dontStrip = true;
    installPhase = ''
      mkdir -p $out
      ar x ${src}
      tar xf data.tar.xz -C $out
      mv $out/opt/apps/com.qq.weixin.deepin/files/* $out/
      rm -rf $out/opt
    '';
  };

  wechatFiles = stdenv.mkDerivation rec {
    pname = "wechat";
    inherit version;

    # WeChat replaces this download link with newer versions from time to time.
    # This package will inevitably break by then, but there's nothing I can do.
    src = fetchurl {
      url = "https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe";
      inherit sha256;
    };

    nativeBuildInputs = [ p7zip ];

    unpackPhase = ''
      7z x ${src}
      rm -rf \$*
    '';

    installPhase = ''
      mkdir $out
      cp -r * $out/
    '';
  };

  runInWineEnv = cmd: writeShellScript "wine-wechat" ''
    export WINEARCH="win32"
    export WINEPREFIX="$HOME/.local/share/wine-wechat"
    export WINEDLLOVERRIDES="winemenubuilder.exe=d"
    export PATH="${deepin-wine6}/bin:$PATH"
    export LANG="zh_CN.UTF-8"

    export WINEPREDLL="${deepinWineEnvironment}/dlls"
    export DISABLE_RENDER_CLIPBOARD=1
    export ATTACH_FILE_DIALOG=1

    if [ ! -e "''${WINEPREFIX}" ]; then
      mkdir -p "''${WINEPREFIX}"
      ${p7zip}/bin/7z x -o"''${WINEPREFIX}" ${deepinWineEnvironment}/files.7z
    fi

    for F in ''${WINEPREFIX}/drive_c/users/*; do
      rm -f "''${F}/Application Data/Tencent/WeChat/All Users/config/configEx.ini"
    done

    ${cmd}
    ${deepin-wine6}/bin/wineserver -k
  '';
in
stdenv.mkDerivation {
  pname = "wine-wechat";
  inherit version;
  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out/bin
    ln -s ${runInWineEnv ''
      ${deepin-wine6}/bin/wine ${wechatFiles}/WeChat.exe
    ''} $out/bin/wine-wechat
    ln -s ${runInWineEnv ''
      ${deepin-wine6}/bin/wine winecfg.exe
    ''} $out/bin/wine-wechat-cfg
    ln -s ${runInWineEnv ''
      ${deepin-wine6}/bin/wine regedit.exe
    ''} $out/bin/wine-wechat-regedit
    ln -s ${runInWineEnv ""} $out/bin/wine-wechat-stop
    ln -s ${./share} $out/share
  '';

  meta = with lib; {
    description = "Wine WeChat";
    homepage = "https://weixin.qq.com/";
    platforms = [ "x86_64-linux" ];
    license = licenses.unfreeRedistributable;
  };
}
