{
  lib,
  stdenv,
  requireFile,
  patchelf,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "vivado-unwrapped";
  version = "2025.2.1";

  src = requireFile {
    name = "FPGAs_AdaptiveSoCs_Unified_SDI_2025.2.1_0320_0604.tar";
    hash = "sha256-nTHt15n9zrYZiHuDM33bkdDzBvwG7mA4RPlOszwB7y4=";
    message = ''
      The AMD Vivado ${finalAttrs.version} installer cannot be downloaded automatically.
      Download FPGAs_AdaptiveSoCs_Unified_SDI_2025.2.1_0320_0604.tar from
      https://www.xilinx.com/support/download.html and add it to the Nix store with:
      nix store add --mode flat /path/to/FPGAs_AdaptiveSoCs_Unified_SDI_2025.2.1_0320_0604.tar
    '';
  };

  __structuredAttrs = true;
  strictDeps = true;

  nativeBuildInputs = [ patchelf ];

  dontStrip = true;
  dontPatchELF = true;

  passthru.edition = "Vivado ML Standard";

  buildCommand = ''
    runHook preBuild

    export HOME=$NIX_BUILD_TOP/vivado-home
    mkdir -p $HOME

    echo "unpacking installer image..."
    mkdir -p $out/image
    tar -xf $src -C $out/image
    cd $out/image/FPGAs_AdaptiveSoCs_Unified_SDI_2025.2.1_0320_0604

    echo "rewriting absolute shebangs..."
    BASH_BIN=$(command -v bash)
    while IFS= read -r -d "" f; do
      sed -i "1s|^#! */bin/.*sh.*$|#!$BASH_BIN|" "$f"
    done < <(find . -path ./payload -prune -o -type f -name '*.sh' -print0)
    sed -i 's#^/bin/rm -rf#rm -rf#' xsetup

    echo "patching ELF interpreters..."
    while IFS= read -r -d "" f; do
      interp=$(patchelf --print-interpreter "$f" 2>/dev/null || true)
      if [ -n "$interp" ]; then
        patchelf --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" "$f"
      fi
    done < <(find . -type f -print0 | while IFS= read -r -d "" f; do
      if head -c 4 "$f" | LC_ALL=C grep -q $'\x7fELF'; then printf '%s\0' "$f"; fi
    done)

    echo "installing in batch mode..."
    sed "s#^Destination=.*#Destination=$out#; /^Modules=/ s/:0/:1/g" ${./install-config.txt} > install_config.txt

    bash ./xsetup -a XilinxEULA,3rdPartyEULA -b Install -c install_config.txt

    echo "cleaning up installer image..."
    cp data/images/xlnx_logo-128x128.png vivado-icon.png || true
    install -Dm644 vivado-icon.png $out/share/icons/hicolor/128x128/apps/vivado.png
    cd /
    rm -rf $out/image

    echo "cleanup done"
    tail -n 20 $HOME/.Xilinx/xinstall/*.log || true

    test -d $out/.xinstall/${finalAttrs.version}
    test -f $out/${finalAttrs.version}/Vivado/settings64.sh
    test -f $out/${finalAttrs.version}/Vivado/bin/vivado

    runHook postBuild
  '';

  meta = {
    description = "AMD Vivado ML Standard design suite";
    license = lib.licenses.unfree;
    sourceProvenance = with lib.sourceTypes; [ binaryNativeCode ];
    platforms = [ "x86_64-linux" ];
    maintainers = [
      {
        github = "xddxdd";
        name = "Xiaodong Dong";
      }
    ];
  };
})
