{
  stdenv,
  lib,
  pkg-config,
  ncurses,
  fetchurl,
}:
stdenv.mkDerivation rec {
  pname = "procps-ng";
  version = "4.0.4";
  src = fetchurl {
    url = "https://sourceforge.net/projects/procps-ng/files/Production/procps-ng-4.0.4.tar.xz";
    hash = "sha256-IocNb+skeK22F85PCaeHrdry0mDFqKp7F9iJqWLF5C4=";
  };

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ ncurses ];

  configureFlags = [ "--disable-modern-top" ];

  meta = {
    mainProgram = "ps";
    maintainers = with lib.maintainers; [ xddxdd ];
    homepage = "https://gitlab.com/procps-ng/procps";
    description = "Utilities that give information about processes using the /proc filesystem";
    priority = 11; # less than coreutils, which also provides "kill" and "uptime"
    license = lib.licenses.gpl2Only;
  };
}
