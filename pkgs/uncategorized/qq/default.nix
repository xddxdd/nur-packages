{ stdenv
, fetchurl
, autoPatchelfHook
, makeWrapper
, lib
  # Dependencies
, alsa-lib
, gtk3
, krb5
, libdrm
, libgcrypt
, libva
, mesa
, nspr
, nss
, pciutils
, systemd
, xorg
, ...
} @ args:

let
  libraries = [
    alsa-lib
    gtk3
    krb5
    libdrm
    libgcrypt
    libva
    mesa.drivers
    nspr
    nss
    pciutils
    systemd
    xorg.libXdamage
  ];
in
stdenv.mkDerivation rec {
  pname = "qq";
  version = "3.0.0-571";
  src = fetchurl {
    url = "https://dldir1.qq.com/qqfile/qq/QQNT/c005c911/linuxqq_3.0.0-571_amd64.deb";
    sha256 = "sha256-8KcUhZwgeFzGyrQITWnJUzEPGZOCj0LIHLmRuKqkgmQ=";
  };

  nativeBuildInputs = [ autoPatchelfHook makeWrapper ];
  buildInputs = libraries;

  unpackPhase = ''
    ar x ${src}
  '';

  installPhase = ''
    mkdir -p $out/bin
    tar xf data.tar.xz -C $out
    mv $out/usr/* $out/
    mv $out/opt/QQ/* $out/opt/
    rm -rf $out/opt/QQ $out/usr

    makeWrapper $out/opt/qq $out/bin/qq \
      --argv0 "qq" \
      --prefix LD_LIBRARY_PATH : "${lib.makeLibraryPath libraries}"

    sed -i "s|Exec=.*|Exec=$out/bin/qq|" $out/share/applications/qq.desktop
    sed -i "s|Icon=.*|Icon=$out/opt/resources/app/512x512.png|" $out/share/applications/qq.desktop
  '';

  meta = with lib; {
    description = "(HIGHLY EXPERIMENTAL) QQ beta edition";
    homepage = "https://im.qq.com/linuxqq/index.html";
    platforms = [ "x86_64-linux" ];
    license = licenses.unfreeRedistributable;
  };
}
