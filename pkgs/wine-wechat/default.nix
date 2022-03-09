{ stdenv
, fetchurl
, p7zip
, unzip
, wine
, winetricks
, writeShellScriptBin
, ...
}:

let
  wineGecko = stdenv.mkDerivation rec {
    pname = "wine-gecko";
    version = "2.47.2";
    src = fetchurl {
      url = "http://dl.winehq.org/wine/wine-gecko/${version}/wine-gecko-${version}-x86.tar.xz";
      sha256 = "157akz7kqg6aja2a5rq096h3v2h39sxkwkj1xnzb1chh47m4dawg";
    };
    dontUnpack = true;
    installPhase = ''
      mkdir -p $out
      tar xf ${src} -C $out
    '';
  };

  wechatWine = wine.overrideAttrs (old: {
    patches = (old.patches or [ ]) ++ [
      ./wine-wechat.patch
    ];

    postInstall = (old.postInstall or "") + ''
      rm -rf $out/share/wine/gecko
      ln -sf ${wineGecko} $out/share/wine/gecko
    '';
  });

  wechatFiles = stdenv.mkDerivation rec {
    pname = "wine-wechat";
    version = "3.5.0.46";

    # WeChat replaces this download link with newer versions from time to time.
    # This package will inevitably break by then, but there's nothing I can do.
    src = fetchurl {
      url = "https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe";
      sha256 = "0alrpl74xzh9v1r093gkam6dvivjf9fy4897f3l40f13qi130pgz";
    };

    nativeBuildInputs = [ p7zip unzip ];

    unpackPhase = ''
      7z x ${src}
    '';

    buildPhase = ''
      mv \[${version}\] output
      for BIN in output/*.bin; do
        unzip -o $BIN -d output/
      done
      rm -rf output/*.bin
    '';

    installPhase = ''
      mkdir $out
      cp -r output/* $out/
    '';
  };
in
writeShellScriptBin "wechat" ''
  export WINEARCH="win32"
  export WINEPREFIX="$XDG_DATA_HOME/wine-wechat"
  export WINEDLLOVERRIDES="winemenubuilder.exe=d"
  export PATH="${wechatWine}/bin:$PATH"
  export LANG="zh_CN.UTF-8"

  ${wechatWine}/bin/wineboot
  grep msls31 $WINEPREFIX/winetricks.log >/dev/null || ${winetricks}/bin/winetricks msls31
  grep riched20 $WINEPREFIX/winetricks.log >/dev/null || ${winetricks}/bin/winetricks riched20

  ${wechatWine}/bin/wine ${wechatFiles}/WeChat.exe
  ${wechatWine}/bin/wineserver -k
''
