{
  stdenv,
  sources,
  lib,
  meson,
  cmake,
  pkg-config,
  procps4,
  libcap_ng,
  systemd,
  ninja,
  ...
} @ args:
stdenv.mkDerivation rec {
  inherit (sources.uksmd) pname version src;
  nativeBuildInputs = [meson cmake pkg-config ninja];
  buildInputs = [procps4 libcap_ng systemd];

  postPatch = ''
    sed -i "/uksmd.service/d" meson.build
    sed -i "s#/usr/bin#$out/bin#g" meson.build
  '';

  meta = with lib; {
    description = "Userspace KSM helper daemon";
    homepage = "https://github.com/CachyOS/uksmd";
    license = licenses.gpl3;
  };
}
