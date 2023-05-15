{
  stdenv,
  lib,
  requireFile,
  buildFHSUserEnvBubblewrap,
  writeTextDir,
  makeWrapper,
  autoconf,
  automake,
  bc,
  getopt,
  glib,
  glibc,
  libtool,
  ncurses,
  nettools,
  perl,
  python3,
  rsync,
  texinfo,
  which,
  xterm,
  zlib,
  ...
}: let
  rsyncWrapped = stdenv.mkDerivation {
    pname = "rsync-wrapped";
    version = "1.0";

    nativeBuildInputs = [makeWrapper];

    phases = ["installPhase"];
    installPhase = ''
      mkdir -p $out/bin
      makeWrapper ${rsync}/bin/rsync $out/bin/rsync \
        --add-flags "--chmod=755"
    '';
  };

  libraries = [
    autoconf
    automake
    bc
    getopt
    glib
    libtool
    ncurses
    nettools
    perl
    python3
    rsyncWrapped
    texinfo
    which
    xterm
    zlib
  ];

  fhs = buildFHSUserEnvBubblewrap {
    name = "petalinux-fhs";
    multiPkgs = pkgs: libraries;
    unshareUser = false;
    unshareIpc = false;
    unsharePid = false;
    unshareNet = false;
    unshareUts = false;
    unshareCgroup = false;
    runScript = "${glibc}/lib/ld-linux-x86-64.so.2";
  };
in
  stdenv.mkDerivation rec {
    pname = "petalinux";
    version = "2022.2";

    src = requireFile {
      name = "petalinux-v2022.2-10141622-installer.run";
      url = "https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/embedded-design-tools.html";
      sha256 = "15ri7b56v041l335j0c3q8hf9ll35vmhjsr6amy7a74rih9gk3sb";
    };

    nativeBuildInputs = [makeWrapper];
    buildInputs = libraries;

    unpackPhase = ''
      runHook preUnpack

      # Extract installer ourselves to skip some integrity checks
      INITSETUP=$(awk '/^##__INITSETUP__/ { print NR + 1; exit 0; }' "$src")
      SKIP=$(awk '/^##__PLNXSDK_FOLLOWS__/ { print NR + 1; exit 0; }' "$src")
      sed -n -e "$INITSETUP,$(($SKIP-2)) p" "$src" > "initsetup.tar.xz"
      truncate -s -1 initsetup.tar.xz
      tar -xf initsetup.tar.xz

      runHook postUnpack
    '';

    buildPhase = ''
      runHook preBuild

      # Patch FHS loader to mount /nix partition read-write
      cat ${fhs}/bin/petalinux-fhs > fhs-loader
      chmod +x fhs-loader
      sed -i "s/--ro-bind/--bind/g" fhs-loader

      runHook postBuild
    '';

    installPhase = ''
      runHook preInstall

      export PLNXINSTALLLER=$src
      export PLNXINSTALLDIR=$out
      export PLNXINSTALL_LOG=/dev/null
      export PLNXCHECKSUM=$(head -n10 $src | grep "PLNXCHECKSUM" | cut -d'=' -f2)
      export VIVADO_VER=$(head -n10 $src | grep "VIVADO_VER" | cut -d'=' -f2)

      mkdir -p $out
      ./fhs-loader "./petalinux-install"

      sed -i "s#XIL_SCRIPT_LOC=\"./\"#XIL_SCRIPT_LOC=\"$out/settings.csh\"#g" $out/settings.csh
      sed -i "s#XIL_SCRIPT_LOC=\"./\"#XIL_SCRIPT_LOC=\"$out/settings.sh\"#g" $out/settings.sh

      mkdir -p $out/bin
      for BIN in $(ls -1 $out/tools/common/petalinux/bin); do
        makeWrapper ${fhs}/bin/petalinux-fhs $out/bin/$BIN \
          --add-flags "$out/tools/common/petalinux/bin/$BIN"
      done

      runHook postInstall
    '';

    dontFixup = true;
  }
