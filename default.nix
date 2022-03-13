# This file describes your repository contents.
# It should return a set of nix derivations
# and optionally the special attributes `lib`, `modules` and `overlays`.
# It should NOT import <nixpkgs>. Instead, you should take pkgs as an argument.
# Having pkgs default to <nixpkgs> is fine though, and it lets you use short
# commands such as:
#     nix-build -A mypackage

{ pkgs, inputs, ... }:

let
  sources = pkgs.callPackage _sources/generated.nix { };
  pkg = path: args: pkgs.callPackage path ({
    inherit sources;
  } // args);
in
rec {
  babeld = pkg ./pkgs/babeld { };
  bird-lg-go = pkg ./pkgs/bird-lg-go { };
  bird-lgproxy-go = pkg ./pkgs/bird-lgproxy-go { };
  boringssl-oqs = pkg ./pkgs/boringssl-oqs {
    inherit liboqs;
  };
  chmlib-utils = pkg ./pkgs/chmlib-utils { };
  coredns = pkg ./pkgs/coredns { };
  dingtalk = pkg ./pkgs/dingtalk { };
  dngzwxdq = pkg ./pkgs/dngzwxdq {
    inherit chmlib-utils;
  };
  dnyjzsxj = pkg ./pkgs/dnyjzsxj {
    inherit chmlib-utils;
  };
  drone-vault = pkg ./pkgs/drone-vault { };
  ftp-proxy = pkg ./pkgs/ftp-proxy { };
  genshin-checkin-helper = pkg ./pkgs/genshin-checkin-helper {
    inherit genshinhelper2 onepush;
  };
  genshinhelper2 = pkg ./pkgs/genshinhelper2 { };
  glibc-debian-openvz-files = pkg ./pkgs/glibc-debian-openvz-files { };
  hath = pkgs.callPackage "${inputs.hath-nix}/pkgs/hath.nix" { };
  hesuvi-hrir = pkg ./pkgs/hesuvi-hrir { };
  keycloak-lantian = pkg ./pkgs/keycloak-lantian {
    inherit (inputs) keycloak-lantian;
  };
  libltnginx = pkg ./pkgs/libltnginx { };
  liboqs = pkg ./pkgs/liboqs { };
  linux-xanmod-lantian = pkg ./pkgs/linux-xanmod-lantian { };
  linux-xanmod-lantian-config = linux-xanmod-lantian.configfile;
  netboot-xyz = pkg ./pkgs/netboot-xyz { };
  netns-exec = pkg ./pkgs/netns-exec { };
  noise-suppression-for-voice = pkg ./pkgs/noise-suppression-for-voice { };
  onepush = pkg ./pkgs/onepush { };
  openresty-lantian = pkg ./pkgs/openresty-lantian {
    inherit liboqs openssl-oqs;
  };
  openssl-oqs = pkg ./pkgs/openssl-oqs {
    inherit liboqs;
  };
  phpmyadmin = pkg ./pkgs/phpmyadmin { };
  phppgadmin = pkg ./pkgs/phppgadmin { };
  qemu-user-static = pkg ./pkgs/qemu-user-static { };
  rime-dict = pkg ./pkgs/rime-dict { };
  rime-moegirl = pkg ./pkgs/rime-moegirl { };
  rime-zhwiki = pkg ./pkgs/rime-zhwiki { };
  route-chain = pkg ./pkgs/route-chain { };
  svp = pkg ./pkgs/svp { };
  vs-rife = pkg ./pkgs/vs-rife { };
  wechat-uos = pkg ./pkgs/wechat-uos { };
  wechat-uos-bin = pkg ./pkgs/wechat-uos/official-bin.nix { };
  wine-wechat = pkg ./pkgs/wine-wechat { };
  xray = pkg ./pkgs/xray { };
}
