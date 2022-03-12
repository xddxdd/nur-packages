{ lib
, stdenv
, pkgsi686Linux
, pkgs
, bubblewrap
, writeShellScript
, ...
}:

{ pname, version, path, deps, meta ? { } }:
let
  libPath = lib.makeLibraryPath deps;

  wrap = binName: writeShellScript "deepin-wine" ''
    blacklist=(/nix /dev /lib /lib64 /proc)

    declare -a auto_mounts
    # loop through all directories in the root
    for dir in /*; do
      # if it is a directory and it is not in the blacklist
      if [[ -d "$dir" ]] && [[ ! "''${blacklist[@]}" =~ "$dir" ]]; then
        # add it to the mount list
        auto_mounts+=(--bind "$dir" "$dir")
      fi
    done

    if [ "$WINEARCH" != "win64" ]; then
      wine=/opt/${pname}/bin/wine
      export WINELOADER=$wine
      [ -z "$WINEPREFIX" ] && export WINEPREFIX="$HOME/.wine"
    else
      wine=/opt/${pname}/bin/wine64
      export WINELOADER=$wine
      [ -z "$WINEPREFIX" ] && export WINEPREFIX="$HOME/.wine64"
    fi

    cmd=(
      ${bubblewrap}/bin/bwrap
      --dev-bind /dev /dev
      --chdir "$(pwd)"
      --die-with-parent
      --ro-bind /nix /nix
      --proc /proc
      --bind ${path}/opt/${pname} /opt/${pname}
      --setenv LD_LIBRARY_PATH "${path}/lib:${path}/lib64:${libPath}:''${LD_LIBRARY_PATH}"
      "''${auto_mounts[@]}"
      ${path}/opt/${pname}/bin/${binName}
    )
    exec "''${cmd[@]}" $*
  '';

  binNames = [
    "msidb"
    "msiexec"
    "notepad"
    "regedit"
    "regsvr32"
    "widl"
    "wine"
    "wine64"
    "wineboot"
    "winebuild"
    "winecfg"
    "wineconsole"
    "winecpp"
    "winedbg"
    "winedump"
    "winefile"
    "wineg++"
    "winegcc"
    "winemaker"
    "winemine"
    "winepath"
    "wineserver"
    "wmc"
    "wrc"
  ];
in
stdenv.mkDerivation {
  inherit pname version;
  phases = [ "installPhase" ];
  installPhase = builtins.concatStringsSep "\n"
    ([
      "mkdir -p $out/bin"
    ] ++ builtins.map
      (n: ''
        cp ${wrap n} $out/bin/${n}
      '')
      binNames);
}
