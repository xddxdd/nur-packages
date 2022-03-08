{ stdenv
, fetchurl
, makeWrapper
, writeShellScriptBin
, p7zip
, lib
, steam
, ...
}:

let
  steam-run = (steam.override {
    extraLibraries = p: with p; [
      libsForQt5.qtbase
      libsForQt5.qtdeclarative
      xorg.libX11
      stdenv.cc.cc.lib
    ];
    extraPkgs = p: with p; [
      gnome.zenity
    ];
    runtimeOnly = true;
  }).run;

  svp = stdenv.mkDerivation rec {
    pname = "svp";
    version = "4.5.210";
    src = fetchurl {
      url = "https://www.svp-team.com/files/svp4-linux.${version}-1.tar.bz2";
      sha256 = "10q8r401wg81vanwxd7v07qrh3w70gdhgv5vmvymai0flndm63cl";
    };

    nativeBuildInputs = [ p7zip makeWrapper ];

    unpackPhase = ''
      tar xf ${src}
    '';

    buildPhase = ''
      mkdir installer
      LANG=C grep --only-matching --byte-offset --binary --text  $'7z\xBC\xAF\x27\x1C' "svp4-linux-64.run" |
        cut -f1 -d: |
        while read ofs; do dd if="svp4-linux-64.run" bs=1M iflag=skip_bytes status=none skip=$ofs of="installer/bin-$ofs.7z"; done
    '';

    installPhase = ''
      mkdir -p $out/opt
      for f in "installer/"*.7z; do
        7z -bd -bb0 -y x -o"$out/opt/" "$f" || true
      done
      rm -rf $out/opt/extensions

      mkdir -p $out/bin
      makeWrapper ${steam-run}/bin/steam-run $out/bin/SVPManager \
        --add-flags $out/opt/SVPManager \
        --unset LD_LIBRARY_PATH \
        --argv0 SVPManager
    '';
  };
in
svp
