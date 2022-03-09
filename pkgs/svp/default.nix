{ stdenv
, bubblewrap
, fetchurl
, glibc
, gnome
, lib
, libmediainfo
, libsForQt5
, libusb1
, lsof
, makeWrapper
, ocl-icd
, p7zip
, patchelf
, pkgs
, vapoursynth
, writeShellScriptBin
, xdg-utils
, xorg
, ...
}:

let
  libPath = lib.makeLibraryPath [
    libsForQt5.qtbase
    libsForQt5.qtdeclarative
    libsForQt5.qtscript
    libsForQt5.qtsvg
    libmediainfo
    libusb1
    xorg.libX11
    stdenv.cc.cc.lib
    ocl-icd
    vapoursynth
  ];

  execPath = lib.makeBinPath [
    gnome.zenity
    lsof
    xdg-utils
  ];

  svp = stdenv.mkDerivation rec {
    pname = "svp";
    version = "4.5.210";
    src = fetchurl {
      url = "https://www.svp-team.com/files/svp4-linux.${version}-1.tar.bz2";
      sha256 = "10q8r401wg81vanwxd7v07qrh3w70gdhgv5vmvymai0flndm63cl";
    };

    nativeBuildInputs = [ p7zip makeWrapper patchelf ];
    dontFixup = true;

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

      for F in $out/opt/plugins/*; do
        patchelf --set-rpath "${libPath}" "$F"
      done

      mkdir $out/bin
      makeWrapper $out/opt/SVPManager $out/bin/SVPManager \
        --prefix LD_LIBRARY_PATH : "${libPath}" \
        --prefix PATH : "${execPath}" \
        --argv0 SVPManager
    '';
  };
in
writeShellScriptBin "SVPManager" ''
  BWRAP=/run/wrappers/bin/bwrap
  if [ ! -f "$BWRAP" ]; then
    cat <<EOF
  Bubblewrap's bwrap binary must be run as SUID to let SVP function normally.

  Add these lines to your configuration.nix:

  security.wrappers.bwrap = {
    owner = "root";
    group = "root";
    setuid = true;
    setgid = true;
    source = pkgs.bubblewrap + "/bin/bwrap";
  };
  EOF
    exit 1
  fi

  blacklist=(/nix /dev /usr /lib /lib64 /proc)

  declare -a auto_mounts
  # loop through all directories in the root
  for dir in /*; do
    # if it is a directory and it is not in the blacklist
    if [[ -d "$dir" ]] && [[ ! "''${blacklist[@]}" =~ "$dir" ]]; then
      # add it to the mount list
      auto_mounts+=(--bind "$dir" "$dir")
    fi
  done

  cmd=(
    $BWRAP
    --dev-bind /dev /dev
    --chdir "$(pwd)"
    --die-with-parent
    --ro-bind /nix /nix
    --proc /proc
    --bind ${glibc}/lib /lib
    --bind ${glibc}/lib /lib64
    --bind /usr/bin/env /usr/bin/env
    --bind ${lsof}/bin/lsof /usr/bin/lsof
    "''${auto_mounts[@]}"
    # /bin/sh
    ${svp}/bin/SVPManager "$@"
  )
  exec "''${cmd[@]}"
''
