{ pkgs
, ...
} @ args:

# Based on https://github.com/NixOS/nixpkgs/blob/nixos-unstable/pkgs/applications/emulators/wine/base.nix
# Perhaps a few packages can be removed, but I'm not doing that now

let
  libpcap0_8 = pkgs.callPackage ./libpcap0_8 { };
  vkd3d = pkgs.callPackage ./vkd3d { };
in
[
  libpcap0_8
  vkd3d
] ++ (with pkgs; [
  alsa-lib
  atk
  cairo
  gdk-pixbuf
  glib
  gst_all_1.gst-plugins-base
  gtk3
  lcms2
  libgphoto2
  libpulseaudio
  libusb
  mpg123
  ocl-icd
  openal
  openldap
  pango
  udev
  xml2
  xorg.libX11
  xorg.libXext
  cups
  dbus
  faudio
  fontconfig
  freetype
  gettext
  gnutls
  gsm
  gst_all_1.gst-libav
  gst_all_1.gst-plugins-good
  gst_all_1.gst-plugins-ugly
  gst_all_1.gstreamer
  libcap
  libdrm
  libGL
  libGLU
  libjpeg
  libpcap
  libpng
  libtiff
  libv4l
  libva
  libxml2
  libxslt
  mesa.osmesa
  ncurses
  opencl-headers
  openldap
  openssl
  perl
  samba4
  sane-backends
  SDL2
  unixODBC
  vulkan-loader
  xorg.libXcomposite
  xorg.libXcursor
  xorg.libXext
  xorg.libXi
  xorg.libXinerama
  xorg.libXrandr
  xorg.libXrender
  xorg.libXxf86vm
])
