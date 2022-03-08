{ stdenv
, fetchurl
, makeWrapper
, writeShellScriptBin
, p7zip
, lib
, libsForQt5
, xorg
, bubblewrap
, glibc
, ...
}:

let
  libraryPath = lib.makeLibraryPath [
    libsForQt5.qtbase
    libsForQt5.qtdeclarative
    xorg.libX11
    stdenv.cc.cc.lib
  ];

  svp = stdenv.mkDerivation rec {
    pname = "svp";
    version = "4.5.210-1";
    src = fetchurl {
      url = "https://www.svp-team.com/files/svp4-linux.${version}.tar.bz2";
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
    '';
  };

  bwrap = writeShellScriptBin "SVPManager" ''
    ${bubblewrap}/bin/bwrap \
      --proc /proc \
      --chdir "$(pwd)" \
      --unshare-user \
      --unshare-uts \
      --unshare-cgroup \
      --die-with-parent \
      --bind /bin /bin \
      --bind /dev /dev \
      --bind /home /home \
      --bind /nix /nix \
      --bind /run /run \
      --bind /sys /sys \
      --bind ${glibc}/lib /lib \
      --bind ${glibc}/lib /lib64 \
      --bind ${svp}/opt /opt/svp \
      --setenv LD_LIBRARY_PATH "${libraryPath}" \
      /opt/svp/SVPManager "$@"
  '';
in
bwrap
