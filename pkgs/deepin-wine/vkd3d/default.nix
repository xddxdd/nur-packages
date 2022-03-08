{ stdenv
, fetchurl
, flex
, bison
, winePackages
, vulkan-headers
, vulkan-loader
, spirv-headers
, ...
} @ args:

stdenv.mkDerivation rec {
  pname = "vkd3d";
  version = "1.3";

  buildInputs = [
    bison
    flex
    spirv-headers
    vulkan-headers
    vulkan-loader
    winePackages.minimal
  ];

  src = fetchurl {
    url = "https://dl.winehq.org/vkd3d/source/vkd3d-1.3.tar.xz";
    sha256 = "1cmqky9bnm88h18dqfish29kfi1q5cfgyaga74mlsjnk0rw38jqk";
  };
}
