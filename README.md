# Lan Tian's NUR Packages

![Build and populate cache](https://github.com/xddxdd/nur-packages/workflows/Build%20and%20populate%20cache/badge.svg)

[![Cachix Cache](https://img.shields.io/badge/cachix-xddxdd-blue.svg)](https://xddxdd.cachix.org)

[![built with garnix](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fgarnix.io%2Fapi%2Fbadges%2Fxddxdd%2Fnur-packages)](https://garnix.io)

## Warning

This NUR contains packages customized for my own use. These packages reside in `lantianCustomized`, `lantianLinuxXanmod` and `lantianPersonal` categories. I do not ensure that they stay backwards compatible or functionally stable, nor do I accept any requests to tailor them for public use.

Packages in all other categories are for public use. I will try my best to minimize changes/customizations on them, and accept issues and pull requests for them.

## How to use

```nix
# flake.nix
{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    nur-xddxdd = {
      url = "github:xddxdd/nur-packages";
      inputs.flake-utils.follows = "flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.default = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        # Add packages from this repo
        inputs.nur-xddxdd.nixosModules.setupOverlay

        # Setup QEMU userspace emulation that works with Docker
        inputs.nur-xddxdd.nixosModules.qemu-user-static-binfmt

        # Binary cache (optional)
        ({ ... }: {
          nix.settings.substituters = [ "https://xddxdd.cachix.org" ];
          nix.settings.trusted-public-keys = [ "xddxdd.cachix.org-1:ay1HJyNDYmlSwj5NXQG065C8LfoqqKaTNCyzeixGjf8=" ];
        })
      ];
    };
  };
}
```

## Binary Cache

This NUR has a binary cache. Use the following settings to access it:

```nix
{
  nix.settings.substituters = [ "https://xddxdd.cachix.org" ];
  nix.settings.trusted-public-keys = [ "xddxdd.cachix.org-1:ay1HJyNDYmlSwj5NXQG065C8LfoqqKaTNCyzeixGjf8=" ];
}
```

Or, use variables from this repository in case I change them:

```nix
{
  nix.settings.substituters = [ nur.repos.xddxdd._meta.url ];
  nix.settings.trusted-public-keys = [ nur.repos.xddxdd._meta.publicKey ];
}
```

## Packages

<details>
<summary>Package set: (Uncategorized) (93 packages)</summary>

| State | Path | Name | Version | Description |
| ----- | ---- | ---- | ------- | ----------- |
|  | `amule-dlp` | [amule-dlp](https://github.com/amule-project/amule) | 7b3a07ab554d95267cca0c4a819b26d8474d6b3b | Peer-to-peer client for the eD2K and Kademlia networks |
|  | `asterisk-g72x` | [asterisk-g72x](https://github.com/arkadijs/asterisk-g72x) | 3855cec2ef2667f3e9224006dbaf179575752218 | G.729 and G.723.1 codecs for Asterisk (Only G.729 is enabled) |
|  | `asteriskDigiumCodecs` | merged- | 1.0.0 |  |
|  | `baidupcs-go` | [baidupcs-go](https://github.com/qjfoidnh/BaiduPCS-Go) | v3.9.5 | iikira/BaiduPCS-Go 原版基础上集成了分享链接/秒传链接转存功能 |
|  | `bepasty` | [bepasty](https://bepasty-server.readthedocs.org/) | 1.2.0 | universal pastebin server |
|  | `bilibili` | [bilibili](https://app.bilibili.com/) | 1.12.1-2 | Bilibili desktop client |
|  | `bird-babel-rtt` | [bird-babel-rtt](http://bird.network.cz) | bcbd53c4966cb59a50aa9d004250e08d10038250 | BIRD Internet Routing Daemon |
|  | `bird-lg-go` | [bird-lg-go](https://github.com/xddxdd/bird-lg-go) | 43b4ad93dd0a84c64a3c24c071c6e328cb5ea91e | BIRD looking glass in Go, for better maintainability, easier deployment & smaller memory footprint |
|  | `bird-lgproxy-go` | [bird-lgproxy-go](https://github.com/xddxdd/bird-lg-go) | 43b4ad93dd0a84c64a3c24c071c6e328cb5ea91e | BIRD looking glass in Go, for better maintainability, easier deployment & smaller memory footprint |
| `Broken` | `boringssl-oqs` | [boringssl-oqs](https://openquantumsafe.org) | OQS-BoringSSL-snapshot-2023-06 | Fork of BoringSSL that includes prototype quantum-resistant key exchange and authentication in the TLS handshake based on liboqs |
|  | `calibre-cops` | [calibre-cops](http://blog.slucas.fr/en/oss/calibre-opds-php-server) | 1.1.3 | Calibre OPDS (and HTML) PHP Server : web-based light alternative to Calibre content server / Calibre2OPDS to serve ebooks (epub, mobi, pdf, ...) |
|  | `chmlib-utils` | [chmlib](http://www.jedrea.com/chmlib) | 0.40a | A library for dealing with Microsoft ITSS/CHM format files |
|  | `chromium-oqs-bin` | [chromium-oqs-bin](https://github.com/open-quantum-safe/oqs-demos) | 0.7.2 | Chromium with Open Quantum Safe patches |
|  | `cloudpan189-go` | [cloudpan189-go](https://github.com/tickstep/cloudpan189-go) | v0.1.3 | 天翼云盘命令行客户端(CLI)，基于GO语言实现 |
|  | `cockpy` | [cockpy](https://github.com/Hiro420/CockPY) | 00fa2f220fd5e22c14a88b5f6000487b49b071f1 | public and open source version of the cbt2 ps im working on  |
|  | `deepspeech-gpu` | [deepspeech-gpu](https://github.com/mozilla/DeepSpeech) | 0.9.3 | Speech-to-text engine which can run in real time on devices ranging from a Raspberry Pi 4 to high power GPU servers. |
|  | `deepspeech-wrappers` | [deepspeech](https://github.com/mozilla/DeepSpeech) | 0.9.3 | Speech-to-text engine which can run in real time on devices ranging from a Raspberry Pi 4 to high power GPU servers. |
|  | `dingtalk` | [dingtalk](https://www.dingtalk.com/) | 7.0.50.30831 | 钉钉 |
|  | `dn42-pingfinder` | [dn42-pingfinder](https://git.dn42.dev/dn42/pingfinder/src/branch/master/clients) | 1.0.0 | DN42 Pingfinder |
|  | `douban-openapi-server` | [douban-openapi-server](https://github.com/caryyu/douban-openapi-server) | c7e2a0f59ba5cfb2d10a31013547686a4afab99d | A Douban API server that provides an unofficial APIs for media information gathering |
|  | `drone-file-secret` | [drone-file-secret](https://github.com/xddxdd/drone-file-secret) | b69ba503becb41c72a1b724f38a26e7f2c34b110 | A secret provider for Drone CI. It simply reads secrets from a given folder, suitable for private use Drone CI instances where running a Vault instance can be undesirable. |
|  | `drone-vault` | [drone-vault](https://docs.drone.io/configure/secrets/external/vault/) | v1.3.0 | Drone plugin for integrating with the Vault secrets manager |
|  | `etherguard` | [etherguard](https://github.com/KusakabeShi/EtherGuard-VPN) | a96db9e8cf68da687c5e26696df9778162d42ad2 | Layer2 version of wireguard with Floyd Warshall implement in go |
|  | `fastapi-dls` | [fastapi-dls](https://gitea.publichub.eu/oscar.krause/fastapi-dls) | 58ffa752f34b2d4ac71b18a68994ccfebb066c70 | Minimal Delegated License Service (DLS) |
|  | `fcitx5-breeze` | [fcitx5-breeze](https://github.com/scratch-er/fcitx5-breeze) | 2.0.0 | Fcitx5 theme to match KDE's Breeze style |
|  | `flaresolverr` | [flaresolverr](https://github.com/FlareSolverr/FlareSolverr) | v3.3.6 | Proxy server to bypass Cloudflare protection |
|  | `flasgger` | [flasgger](http://flasgger.pythonanywhere.com/) | 0.9.5 | Easy OpenAPI specs and Swagger UI for your Flask API |
|  | `ftp-proxy` | [ftp-proxy](http://www.ftpproxy.org/) | 1.2.3 | ftp.proxy - FTP Proxy Server |
|  | `genshin-checkin-helper` | [genshin-checkin-helper](https://gitlab.com/y1ndan/genshin-checkin-helper) | b9e36543bfe5b042e015463e5d0398cd234cba90 | More than check-in for Genshin Impact. |
|  | `genshinhelper2` | [genshinhelper2](https://gitlab.com/y1ndan/genshinhelper2) | 1382b89d0ee1f5dfcbe1425398fb4cfc260ddcdd | A Python library for miHoYo bbs and HoYoLAB Community. |
|  | `glauth` | [glauth](https://github.com/glauth/glauth) | v2.3.0 | A lightweight LDAP server for development, home use, or CI |
|  | `google-earth-pro` | [google-earth-pro](https://www.google.com/earth/) | 7.3.6.9345 | A world sphere viewer |
|  | `gopherus` | [gopherus](http://gopherus.sourceforge.net/) | 1.2.1 | Gopherus is a free, multiplatform, console-mode gopher client that provides a classic text interface to the gopherspace. |
|  | `grasscutter` | [grasscutter](https://github.com/Grasscutters/Grasscutter) | 1.7.2 | A server software reimplementation for a certain anime game. |
|  | `hath` | [hath](https://e-hentai.org/) | 1.6.1 | Hentai@Home |
|  | `hesuvi-hrir` | [hesuvi-hrir](https://sourceforge.net/projects/hesuvi/) | 2.0.0.1 | Headphone Surround Virtualizations for Equalizer APO |
|  | `hoyo-glyphs` | [hoyo-glyphs](https://github.com/SpeedyOrc-C/Hoyo-Glyphs) | 9914343c51384e45496522074c6cc6b15394543c | Constructed scripts by Hoyoverse 米哈游的架空文字  |
|  | `kaixinsong-fonts` | [kaixinsong-fonts](http://www.guoxuedashi.net/zidian/bujian/KaiXinSong.php) | 3.0 | KaiXinSong |
|  | `kata-image` | [kata-image](https://github.com/kata-containers/kata-containers) | 3.1.3 | Kata Containers is an open source project and community working to build a standard implementation of lightweight Virtual Machines (VMs) that feel and perform like containers, but provide the workload isolation and security advantages of VMs. (Packaging script adapted from https://github.com/TUM-DSE/doctor-cluster-config/blob/0c40be8dd86282122f8f04df738c409ef5e3da1c/pkgs/kata-images/default.nix) |
| `Broken` | `kata-runtime` | [kata-runtime](https://github.com/kata-containers/kata-containers) | 3.1.3 | Kata Containers is an open source project and community working to build a standard implementation of lightweight Virtual Machines (VMs) that feel and perform like containers, but provide the workload isolation and security advantages of VMs. (Packaging script adapted from https://github.com/TUM-DSE/doctor-cluster-config/blob/0c40be8dd86282122f8f04df738c409ef5e3da1c/pkgs/kata-runtime/default.nix) |
|  | `konnect` | [konnect](https://github.com/Kopano-dev/konnect) | v0.34.0 | Kopano Konnect implements an OpenID provider (OP) with integrated web login and consent forms. |
|  | `lantianCustomized` | merged-asterisk-attic-telnyx-compatible-coredns-librime-with-plugins-linux-xanmod-lantian-linux-xanmod-lantian-lto-linux-xanmod-lantian-unstable-linux-xanmod-lantian-unstable-lto-nbfc-linux-nginx-transmission-with-webui | 1.0.0 |  |
|  | `lantianLinuxXanmod` | merged-generic-generic-lto-latest-generic-latest-generic-lto-latest-x86_64-v1-latest-x86_64-v1-lto-latest-x86_64-v2-latest-x86_64-v2-lto-latest-x86_64-v3-latest-x86_64-v3-lto-latest-x86_64-v4-latest-x86_64-v4-lto-lts-generic-lts-generic-lto-lts-x86_64-v1-lts-x86_64-v1-lto-lts-x86_64-v2-lts-x86_64-v2-lto-lts-x86_64-v3-lts-x86_64-v3-lto-lts-x86_64-v4-lts-x86_64-v4-lto-v6_0-generic-v6_0-generic-lto-v6_0-x86_64-v1-v6_0-x86_64-v1-lto-v6_0-x86_64-v2-v6_0-x86_64-v2-lto-v6_0-x86_64-v3-v6_0-x86_64-v3-lto-v6_0-x86_64-v4-v6_0-x86_64-v4-lto-v6_1-generic-v6_1-generic-lto-v6_1-x86_64-v1-v6_1-x86_64-v1-lto-v6_1-x86_64-v2-v6_1-x86_64-v2-lto-v6_1-x86_64-v3-v6_1-x86_64-v3-lto-v6_1-x86_64-v4-v6_1-x86_64-v4-lto-x86_64-v1-x86_64-v1-lto-x86_64-v2-x86_64-v2-lto-x86_64-v3-x86_64-v3-lto-x86_64-v4-x86_64-v4-lto | 1.0.0 |  |
|  | `lantianLinuxXanmodPackages` | merged- | 1.0.0 |  |
|  | `lantianPersonal` | merged-libltnginx | 1.0.0 |  |
|  | `ldap-auth-proxy` | [ldap-auth-proxy](https://github.com/pinepain/ldap-auth-proxy) | 66a8236af574f554478fe376051b95f61235efc9 | A simple drop-in HTTP proxy for transparent LDAP authentication which is also a HTTP auth backend. |
|  | `libnftnl-fullcone` | [libnftnl](https://netfilter.org/projects/libnftnl/) | 1.2.6 | A userspace library providing a low-level netlink API to the in-kernel nf_tables subsystem |
|  | `liboqs` | [liboqs](https://openquantumsafe.org) | a80fdf8ee48ea979b5b90ceba026610338608ce0 | C library for prototyping and experimenting with quantum-resistant cryptography |
|  | `netboot-xyz` | [netboot-xyz](https://netboot.xyz/) | 2.0.72 | Your favorite operating systems in one place. A network-based bootable operating system installer based on iPXE. |
|  | `netns-exec` | [netns-exec](https://github.com/pekman/netns-exec) | aa346fd058d47b238ae1b86250f414bcab2e7927 | Run command in Linux network namespace as normal user |
|  | `nftables-fullcone` | [nftables](https://netfilter.org/projects/nftables/) | 1.0.8 | The project that aims to replace the existing {ip,ip6,arp,eb}tables framework |
|  | `noise-suppression-for-voice` | [noise-suppression-for-voice](https://github.com/werman/noise-suppression-for-voice) | v1.03 | Noise suppression plugin based on Xiph's RNNoise |
|  | `nullfs` | [nullfs](https://github.com/xrgtn/nullfs) | 0884f87ec01faaee219f59742c14ed3c3945f5c0 | FUSE nullfs drivers |
| `Broken` | `nvlax` | [nvlax](https://github.com/illnyang/nvlax) | b3699ad40c4dfbb9d46c53325d63ae8bf4a94d7f | Future-proof NvENC & NvFBC patcher |
|  | `oci-arm-host-capacity` | [oci-arm-host-capacity](https://github.com/hitrov/oci-arm-host-capacity) | 1a655bf6150d64f4f3732f267477ed3e4c6f87d0 | This script allows to bypass Oracle Cloud Infrastructure 'Out of host capacity' error immediately when additional OCI capacity will appear in your Home Region / Availability domain. |
|  | `onepush` | [onepush](https://gitlab.com/y1ndan/onepush) | 3a1d5880e3b8f1c5191ee28acd828def15fe135d | A Python library to send notifications to your iPhone, Discord, Telegram, WeChat, QQ and DingTalk. |
|  | `openj9-ibm-semeru` | merged-jdk-bin-11-jdk-bin-11_0_12_0-jdk-bin-11_0_13_0-jdk-bin-11_0_14_0-jdk-bin-11_0_14_1-jdk-bin-11_0_15_0-jdk-bin-11_0_16_0-jdk-bin-11_0_16_1-jdk-bin-11_0_17_0-jdk-bin-11_0_18_0-jdk-bin-11_0_19_0-jdk-bin-11_0_20_0-jdk-bin-11_0_20_1-jdk-bin-16-jdk-bin-16_0_2_0-jdk-bin-17-jdk-bin-17_0_1_0-jdk-bin-17_0_2_0-jdk-bin-17_0_3_0-jdk-bin-17_0_4_0-jdk-bin-17_0_4_1-jdk-bin-17_0_5_0-jdk-bin-17_0_6_0-jdk-bin-17_0_7_0-jdk-bin-17_0_8_0-jdk-bin-17_0_8_1-jdk-bin-18-jdk-bin-18_0_1_0-jdk-bin-18_0_1_1-jdk-bin-18_0_2_0-jdk-bin-18_0_2_1-jdk-bin-19-jdk-bin-19_0_2_0-jdk-bin-20-jdk-bin-20_0_1_0-jdk-bin-20_0_2_0-jdk-bin-8-jdk-bin-8_0_302_0-jdk-bin-8_0_312_0-jdk-bin-8_0_322_0-jdk-bin-8_0_332_0-jdk-bin-8_0_345_0-jdk-bin-8_0_345_1-jdk-bin-8_0_352_0-jdk-bin-8_0_362_0-jdk-bin-8_0_372_0-jdk-bin-8_0_382_0-jre-bin-11-jre-bin-11_0_12_0-jre-bin-11_0_13_0-jre-bin-11_0_14_0-jre-bin-11_0_14_1-jre-bin-11_0_15_0-jre-bin-11_0_16_0-jre-bin-11_0_16_1-jre-bin-11_0_17_0-jre-bin-11_0_18_0-jre-bin-11_0_19_0-jre-bin-11_0_20_0-jre-bin-11_0_20_1-jre-bin-16-jre-bin-16_0_2_0-jre-bin-17-jre-bin-17_0_1_0-jre-bin-17_0_2_0-jre-bin-17_0_3_0-jre-bin-17_0_4_0-jre-bin-17_0_4_1-jre-bin-17_0_5_0-jre-bin-17_0_6_0-jre-bin-17_0_7_0-jre-bin-17_0_8_0-jre-bin-17_0_8_1-jre-bin-18-jre-bin-18_0_1_0-jre-bin-18_0_1_1-jre-bin-18_0_2_0-jre-bin-18_0_2_1-jre-bin-19-jre-bin-19_0_2_0-jre-bin-20-jre-bin-20_0_1_0-jre-bin-20_0_2_0-jre-bin-8-jre-bin-8_0_302_0-jre-bin-8_0_312_0-jre-bin-8_0_322_0-jre-bin-8_0_332_0-jre-bin-8_0_345_0-jre-bin-8_0_345_1-jre-bin-8_0_352_0-jre-bin-8_0_362_0-jre-bin-8_0_372_0-jre-bin-8_0_382_0 | 1.0.0 |  |
|  | `openjdk-adoptium` | merged-jdk-bin-11-jdk-bin-11_0_12_7-jdk-bin-11_0_13_8-jdk-bin-11_0_14_1_1-jdk-bin-11_0_14_9-jdk-bin-11_0_15_10-jdk-bin-11_0_16_1_1-jdk-bin-11_0_16_8-jdk-bin-11_0_17_8-jdk-bin-11_0_18_10-jdk-bin-11_0_19_7-jdk-bin-11_0_20_1_1-jdk-bin-11_0_20_8-jdk-bin-16-jdk-bin-16_0_2_7-jdk-bin-17-jdk-bin-17_0_1_12-jdk-bin-17_0_2_8-jdk-bin-17_0_3_7-jdk-bin-17_0_4_1_1-jdk-bin-17_0_4_8-jdk-bin-17_0_5_8-jdk-bin-17_0_6_10-jdk-bin-17_0_7_7-jdk-bin-17_0_8_1_1-jdk-bin-17_0_8_7-jdk-bin-17_35-jdk-bin-18-jdk-bin-18_0_1_10-jdk-bin-18_0_2_1_1-jdk-bin-18_0_2_9-jdk-bin-18_36-jdk-bin-8-jdk-bin-8u302_b08-jdk-bin-8u312_b07-jdk-bin-8u322_b06-jdk-bin-8u332_b09-jdk-bin-8u342_b07-jdk-bin-8u345_b01-jdk-bin-8u352_b08-jdk-bin-8u362_b09-jdk-bin-8u372_b07-jdk-bin-8u382_b05-jre-bin-11-jre-bin-11_0_12_7-jre-bin-11_0_13_8-jre-bin-11_0_14_1_1-jre-bin-11_0_14_9-jre-bin-11_0_15_10-jre-bin-11_0_16_1_1-jre-bin-11_0_16_8-jre-bin-11_0_17_8-jre-bin-11_0_18_10-jre-bin-11_0_19_7-jre-bin-11_0_20_1_1-jre-bin-11_0_20_8-jre-bin-17-jre-bin-17_0_1_12-jre-bin-17_0_2_8-jre-bin-17_0_3_7-jre-bin-17_0_4_1_1-jre-bin-17_0_4_8-jre-bin-17_0_5_8-jre-bin-17_0_6_10-jre-bin-17_0_7_7-jre-bin-17_0_8_1_1-jre-bin-17_0_8_7-jre-bin-18-jre-bin-18_0_1_10-jre-bin-18_0_2_1_1-jre-bin-18_0_2_9-jre-bin-8-jre-bin-8u302_b08-jre-bin-8u312_b07-jre-bin-8u322_b06-jre-bin-8u332_b09-jre-bin-8u342_b07-jre-bin-8u345_b01-jre-bin-8u352_b08-jre-bin-8u362_b09-jre-bin-8u372_b07-jre-bin-8u382_b05 | 1.0.0 |  |
|  | `openssl-oqs` | [openssl-oqs](https://www.openssl.org/) | 1.1.1 | A cryptographic library that implements the SSL and TLS protocols |
|  | `openssl-oqs-provider` | [openssl-oqs-provider](https://openquantumsafe.org) | 5fd47f991a8a04887d1313d287f7ba5ba5fbaefa | OpenSSL 3 provider containing post-quantum algorithms |
|  | `osdlyrics` | [osdlyrics](https://github.com/osdlyrics/osdlyrics) | 0.5.14 | Standalone lyrics fetcher/displayer (windowed and OSD mode). |
|  | `payload-dumper-go` | [payload-dumper-go](https://github.com/ssut/payload-dumper-go) | 1.2.2 | An android OTA payload dumper written in Go |
|  | `phpmyadmin` | [phpmyadmin](https://www.phpmyadmin.net/) | 5.2.1 | A web interface for MySQL and MariaDB |
|  | `phppgadmin` | [phppgadmin](https://github.com/phppgadmin/phppgadmin) | v7.14.5-mod | The premier web-based administration tool for PostgreSQL |
|  | `plangothic-fonts` | merged-allideo-fallback | 1.0.0 |  |
|  | `pterodactyl-wings` | [pterodactyl-wings](https://pterodactyl.io) | v1.11.7 | The server control plane for Pterodactyl Panel. |
|  | `qbittorrent-enhanced-edition` | [qbittorrent-enhanced-edition](https://www.qbittorrent.org/) | release-4.5.5.10 | Featureful free software BitTorrent client |
|  | `qbittorrent-enhanced-edition-nox` | [qbittorrent-enhanced-edition](https://www.qbittorrent.org/) | release-4.5.5.10 | Featureful free software BitTorrent client |
|  | `qemu-user-static` | [qemu-user-static](http://www.qemu.org/) | 8.1.1+ds-2 | A generic and open source machine emulator and virtualizer |
|  | `qq` | [qq](https://im.qq.com/linuxqq/index.html) | 3.2.1-17153 | QQ for Linux |
|  | `qqmusic` | [qqmusic](https://y.qq.com/) | 1.1.5 | Tencent QQ Music (Packaging script adapted from https://aur.archlinux.org/packages/qqmusic-bin) |
|  | `rime-aurora-pinyin` | [rime-aurora-pinyin](https://github.com/hosxy/rime-aurora-pinyin) | 122b46976401995cbafcfc748806985ff3a437a4 | 【极光拼音】输入方案 |
|  | `rime-dict` | [rime-dict](https://github.com/Iorest/rime-dict) | 325ecbda51cd93e07e2fe02e37e5f14d94a4a541 | RIME 词库增强 |
|  | `rime-ice` | [rime-ice](https://dvel.me/posts/rime-ice/) | c2d62e43855c24620b99a87e35b3a3bd74521c6f | Rime 配置：雾凇拼音 | 长期维护的简体词库  |
|  | `rime-moegirl` | [rime-moegirl](https://github.com/outloudvi/mw2fcitx/releases) | 20230914 | Releases for dict of zh.moegirl.org.cn |
|  | `rime-zhwiki` | [rime-zhwiki](https://github.com/felixonmars/fcitx5-pinyin-zhwiki) | 20230823 | Fcitx 5 Pinyin Dictionary from zh.wikipedia.org |
|  | `route-chain` | [route-chain](https://github.com/xddxdd/route-chain) | 8922b56c70f92f29a9bbd72a4e8a13fd8b8c4197 | A small app to generate a long path in traceroute. |
|  | `sgx-software-enable` | [sgx-software-enable](https://github.com/intel/sgx-software-enable) | 7977d6dd373f3a14a615ee9be6f24ecd37c0b43d | This application will enable Intel SGX on Linux systems where the BIOS supports Intel SGX, but does not provide an explicit option to enable it. These systems can only enable Intel SGX via the "software enable" procedure. |
|  | `smartrent_py` | [smartrent_py](https://github.com/ZacheryThomas/smartrent.py) | 0.4.0 | Api for SmartRent locks, thermostats, moisture sensors and switches |
|  | `soggy` | [soggy](https://github.com/LDAsuku/soggy) | 2736cb094a51d186dabf2204a7599e9b8118f8dd | Experimental server emulator for a game I forgot its name |
|  | `space-cadet-pinball-full-tilt` | [SpaceCadetPinball](https://github.com/k4zmu2a/SpaceCadetPinball) | 2.0.1 | Reverse engineering of 3D Pinball for Windows – Space Cadet, a game bundled with Windows (With Full Tilt Pinball data) |
|  | `svp` | [svp](https://www.svp-team.com/wiki/SVP:Linux) | 4.5.210-2 | SmoothVideo Project 4 (SVP4) (Packaging script adapted from https://aur.archlinux.org/packages/svp) |
|  | `tachidesk-server` | [tachidesk-server](https://github.com/Suwayomi/Tachidesk-Server) | 0.6.2-r1074 | A rewrite of Tachiyomi for the Desktop |
|  | `th-fonts` | merged-feon-hak-joeng-khaai-p-khaai-t-ming-sung-p-sung-t-sy-tshyn | 1.0.0 |  |
|  | `undetected-chromedriver` | [undetected-chromedriver](https://github.com/ultrafunkamsterdam/undetected-chromedriver) | cea80717c5a3d95ccf5c40e6e38081d5454ec7a5 | Custom Selenium Chromedriver | Zero-Config | Passes ALL bot mitigation systems (like Distil / Imperva/ Datadadome / CloudFlare IUAM) |
|  | `undetected-chromedriver-bin` | [undetected-chromedriver-bin](https://chromedriver.chromium.org/) | 117.0.5938.149 | Chromedriver with undetected-chromedriver patch |
|  | `vivado-2022_2` | [vivado](https://www.xilinx.com/products/design-tools/vivado.html) | 2022.2 | Xilinx Vivado WebPack Edition (Packaging script adapted from https://github.com/lschuermann/nur-packages/blob/master/pkgs/vivado/vivado-2022_2.nix) |
| `Broken` | `vs-rife` | [vs-rife](https://github.com/HolyWu/vs-rife) | v4.0.0 | Real-Time Intermediate Flow Estimation for Video Frame Interpolation for VapourSynth |
|  | `wechat-uos` | [wechat-uos](https://weixin.qq.com/) | 2.1.5 | WeChat desktop (System Electron) (Packaging script adapted from https://aur.archlinux.org/packages/wechat-uos) |
|  | `wechat-uos-bin` | [wechat-uos-bin](https://weixin.qq.com/) | 2.1.5 | WeChat desktop (Official binary) (Packaging script adapted from https://aur.archlinux.org/packages/wechat-uos) |
|  | `wine-wechat` | [wine-wechat](https://weixin.qq.com/) | 3.9.7 | Wine WeChat (Packaging script adapted from https://aur.archlinux.org/packages/deepin-wine-wechat) |
|  | `xstatic-asciinema-player` | [xstatic-asciinema-player](https://github.com/asciinema/asciinema-player) | 2.6.1.1 | asciinema-player packaged for setuptools (easy_install) / pip. |
|  | `xstatic-font-awesome` | [xstatic-font-awesome](https://github.com/FortAwesome/Font-Awesome) | 4.7.0.0 | Font Awesome packaged for setuptools (easy_install) / pip. |
</details>



