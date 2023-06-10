# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  amule-dlp = {
    pname = "amule-dlp";
    version = "7b3a07ab554d95267cca0c4a819b26d8474d6b3b";
    src = fetchFromGitHub {
      owner = "persmule";
      repo = "amule-dlp";
      rev = "7b3a07ab554d95267cca0c4a819b26d8474d6b3b";
      fetchSubmodules = false;
      sha256 = "sha256-aZ+BjBNKHbHP44L7iOK9t1n/4l4U+R/pZYfTSBjFOA4=";
    };
    date = "2023-03-02";
  };
  asterisk-alaw16 = {
    pname = "asterisk-alaw16";
    version = "3f81697eec6388a3cdf74743a436ef4faea542d6";
    src = fetchFromGitHub {
      owner = "traud";
      repo = "asterisk-alaw16";
      rev = "3f81697eec6388a3cdf74743a436ef4faea542d6";
      fetchSubmodules = false;
      sha256 = "sha256-A44u5jR+lBzvovS928DogFY8rxpmyxr9a9TeSa8X6hg=";
    };
    date = "2018-08-28";
  };
  asterisk-amr = {
    pname = "asterisk-amr";
    version = "420ab33f236e15955351e45bf9fbb256228afe21";
    src = fetchFromGitHub {
      owner = "traud";
      repo = "asterisk-amr";
      rev = "420ab33f236e15955351e45bf9fbb256228afe21";
      fetchSubmodules = false;
      sha256 = "sha256-Q8q2fF7MtMlyrVYABaM9V5C0FJj0g9oihE6TLsoe28E=";
    };
    date = "2022-01-07";
  };
  asterisk-evs = {
    pname = "asterisk-evs";
    version = "c31d342330ddb6e11cb4ac7b516ac5ea409c1fb8";
    src = fetchFromGitHub {
      owner = "traud";
      repo = "asterisk-evs";
      rev = "c31d342330ddb6e11cb4ac7b516ac5ea409c1fb8";
      fetchSubmodules = false;
      sha256 = "sha256-soayTFbl0FHkH4ZxaeL+ApDsJ2e3CDIIW0KX5rzAAAM=";
    };
    date = "2022-03-24";
  };
  asterisk-g72x = {
    pname = "asterisk-g72x";
    version = "3855cec2ef2667f3e9224006dbaf179575752218";
    src = fetchFromGitHub {
      owner = "arkadijs";
      repo = "asterisk-g72x";
      rev = "3855cec2ef2667f3e9224006dbaf179575752218";
      fetchSubmodules = false;
      sha256 = "sha256-H6j8zCyId+yTaSo7mmwDSmC64bznkvUgAcQbuNLbc8s=";
    };
    date = "2020-10-27";
  };
  asterisk-gsm-efr = {
    pname = "asterisk-gsm-efr";
    version = "e91ef643a7ff341e1fdaa1c6ff63b3cdc52ac8b4";
    src = fetchFromGitHub {
      owner = "traud";
      repo = "asterisk-gsm-efr";
      rev = "e91ef643a7ff341e1fdaa1c6ff63b3cdc52ac8b4";
      fetchSubmodules = false;
      sha256 = "sha256-EzQA+j2QBilNWgoPzcNEkf/3XO6XNl8ygDD6Q65tdFk=";
    };
    date = "2018-08-28";
  };
  baidupcs-go = {
    pname = "baidupcs-go";
    version = "v3.9.2";
    src = fetchFromGitHub {
      owner = "qjfoidnh";
      repo = "BaiduPCS-Go";
      rev = "v3.9.2";
      fetchSubmodules = false;
      sha256 = "sha256-rN5c0m12Y20d+mbVI0BDvzx3lvRiknxESZ7n16z18Ik=";
    };
  };
  bepasty = {
    pname = "bepasty";
    version = "1.1.0";
    src = fetchurl {
      url = "https://pypi.org/packages/source/b/bepasty/bepasty-1.1.0.tar.gz";
      sha256 = "sha256-f5tRq48tCqjzOGq7Z2T2U1zwQN121N9ap+xPxHWZyvU=";
    };
  };
  bilibili = {
    pname = "bilibili";
    version = "1.10.1-4";
    src = fetchurl {
      url = "https://github.com/msojocs/bilibili-linux/releases/download/v1.10.1-4/io.github.msojocs.bilibili_1.10.1-4_amd64.deb";
      sha256 = "sha256-/jvgCEqd0kSAs3U7eJQ7fFyHdGcyV/7nMnNgQpDVgm0=";
    };
  };
  bird-babel-rtt = {
    pname = "bird-babel-rtt";
    version = "69372dc9aa8b234b79999c4cdcdfa3aa05e3a672";
    src = fetchFromGitHub {
      owner = "NickCao";
      repo = "bird";
      rev = "69372dc9aa8b234b79999c4cdcdfa3aa05e3a672";
      fetchSubmodules = false;
      sha256 = "sha256-b9RVWZmzT6E7XAb+GW6YXcZXmG+nQBKYjOXEZNPkGpQ=";
    };
    date = "2023-06-02";
  };
  bird-lg-go = {
    pname = "bird-lg-go";
    version = "bb479d22ae3d9558d5ff09a53ec2db386ee87551";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "bird-lg-go";
      rev = "bb479d22ae3d9558d5ff09a53ec2db386ee87551";
      fetchSubmodules = false;
      sha256 = "sha256-5A29g6aDkNNqp3Ran4Qzr/dX9hy8SGVfsvpmkTNe+uQ=";
    };
    date = "2023-06-02";
  };
  boringssl-oqs = {
    pname = "boringssl-oqs";
    version = "OQS-BoringSSL-snapshot-2022-08";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "boringssl";
      rev = "OQS-BoringSSL-snapshot-2022-08";
      fetchSubmodules = false;
      sha256 = "sha256-trNs7rI/mSaY6BZjA3S2tls1Kf4IqTsFnTKpn/Igoq4=";
    };
  };
  calibre-cops = {
    pname = "calibre-cops";
    version = "1.1.3";
    src = fetchurl {
      url = "https://github.com/seblucas/cops/releases/download/1.1.3/cops-1.1.3.zip";
      sha256 = "sha256-aMnvs0CrMJic2JoZoXPEWHLTPthd0CZ0+K8It3SMvHc=";
    };
  };
  chromium-oqs-bin = {
    pname = "chromium-oqs-bin";
    version = "0.7.2";
    src = fetchurl {
      url = "https://github.com/open-quantum-safe/oqs-demos/releases/download/0.7.2/chromium-ubuntu-0.7.2.tgz";
      sha256 = "sha256-Gt2kucYmnMwfnPO15dhasA0Pus8m+70nDQfnfwMUxAE=";
    };
  };
  cloudpan189-go = {
    pname = "cloudpan189-go";
    version = "v0.1.3";
    src = fetchFromGitHub {
      owner = "tickstep";
      repo = "cloudpan189-go";
      rev = "v0.1.3";
      fetchSubmodules = false;
      sha256 = "sha256-CJCTfzcLw5e41RZXhgbJhZVOP4FDDYM74Oo9my/liZk=";
    };
  };
  coredns-lantian = {
    pname = "coredns-lantian";
    version = "c02cd42067dffcb773ebd9cecd32691d0bafebd9";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "coredns";
      rev = "c02cd42067dffcb773ebd9cecd32691d0bafebd9";
      fetchSubmodules = false;
      sha256 = "sha256-j5nwobSO74zXp6ucyv/F3mXcyBcxFUAiFfcGgpXv22A=";
    };
    date = "2023-02-17";
  };
  dingtalk = {
    pname = "dingtalk";
    version = "1.7.0.30419";
    src = fetchurl {
      url = "https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_1.7.0.30419_amd64.deb";
      sha256 = "sha256-Ycq3YzhIbk8nRltgcVgDFQUFqKq57kmcAlOsh/t9UGI=";
    };
  };
  douban-openapi-server = {
    pname = "douban-openapi-server";
    version = "c7e2a0f59ba5cfb2d10a31013547686a4afab99d";
    src = fetchFromGitHub {
      owner = "caryyu";
      repo = "douban-openapi-server";
      rev = "c7e2a0f59ba5cfb2d10a31013547686a4afab99d";
      fetchSubmodules = false;
      sha256 = "sha256-Ri56XBkGjLF8+Rv7lYDM83WfZ2rzwF0p5SZzBeC3ToI=";
    };
    date = "2022-12-17";
  };
  drone-vault = {
    pname = "drone-vault";
    version = "v1.3.0";
    src = fetchFromGitHub {
      owner = "drone";
      repo = "drone-vault";
      rev = "v1.3.0";
      fetchSubmodules = false;
      sha256 = "sha256-g4D+pnOo41UqPDFF3lvh/yNFVzP8rqglG+4xPx+aEzM=";
    };
  };
  etherguard = {
    pname = "etherguard";
    version = "7775441e24d68b191fd285d851e58713bead8bc5";
    src = fetchFromGitHub {
      owner = "KusakabeShi";
      repo = "EtherGuard-VPN";
      rev = "7775441e24d68b191fd285d851e58713bead8bc5";
      fetchSubmodules = false;
      sha256 = "sha256-KOJAD0IUE7HIrCbCg4RuERiyaasz7o053sEL+ZurdVQ=";
    };
    date = "2023-02-23";
  };
  fastapi-dls = {
    pname = "fastapi-dls";
    version = "14cf6a953fc46f9cafbd9818214201f6248c58b8";
    src = fetchgit {
      url = "https://gitea.publichub.eu/oscar.krause/fastapi-dls.git";
      rev = "14cf6a953fc46f9cafbd9818214201f6248c58b8";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-nxpljlOfdhYDpbgOfNTMUf9MtiaZgiOoofqEu1Cv7co=";
    };
    date = "2023-05-09";
  };
  fcitx5-breeze = {
    pname = "fcitx5-breeze";
    version = "2.0.0";
    src = fetchurl {
      url = "https://github.com/scratch-er/fcitx5-breeze/releases/download/v2.0.0/fcitx5-breeze-prebuilt-2.0.0.tar.gz";
      sha256 = "sha256-Xw5oBsxsCzoqXZ3r6koVuVmRAi8Ys9e2CmKxBhLenHM=";
    };
  };
  flaresolverr = {
    pname = "flaresolverr";
    version = "v3.2.0";
    src = fetchFromGitHub {
      owner = "FlareSolverr";
      repo = "FlareSolverr";
      rev = "v3.2.0";
      fetchSubmodules = false;
      sha256 = "sha256-d3uuOILDvKB+IoIXZVtN/kgurETp40uSAOpoTbPX3yI=";
    };
  };
  flasgger = {
    pname = "flasgger";
    version = "0.9.5";
    src = fetchFromGitHub {
      owner = "flasgger";
      repo = "flasgger";
      rev = "0.9.5";
      fetchSubmodules = false;
      sha256 = "sha256-cYFMKZxpi69gVWqyZUltCL0ZwcfIABNsJKqAhN2TTSg=";
    };
  };
  genshin-checkin-helper = {
    pname = "genshin-checkin-helper";
    version = "b9e36543bfe5b042e015463e5d0398cd234cba90";
    src = fetchgit {
      url = "https://gitlab.com/y1ndan/genshin-checkin-helper.git";
      rev = "b9e36543bfe5b042e015463e5d0398cd234cba90";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-sweiJeZx+/uShHxT0gXiVxADeHSyeTtK1G6jgMcMpZE=";
    };
    date = "2021-11-09";
  };
  genshinhelper2 = {
    pname = "genshinhelper2";
    version = "1382b89d0ee1f5dfcbe1425398fb4cfc260ddcdd";
    src = fetchFromGitHub {
      owner = "y1ndan";
      repo = "genshinhelper2";
      rev = "1382b89d0ee1f5dfcbe1425398fb4cfc260ddcdd";
      fetchSubmodules = false;
      sha256 = "sha256-jkg3ndR9t/v5TFsda6e94Duce5BexbUFvW8ZevJO35A=";
    };
    date = "2023-05-22";
  };
  glauth = {
    pname = "glauth";
    version = "v2.2.0-RC1";
    src = fetchFromGitHub {
      owner = "glauth";
      repo = "glauth";
      rev = "v2.2.0-RC1";
      fetchSubmodules = false;
      sha256 = "sha256-fPEBSEmlFYoe4PGfs7x26GvVlLZhiPvwiUgXwhlrXLk=";
    };
  };
  google-earth-pro = {
    pname = "google-earth-pro";
    version = "7.3.6.9345";
    src = fetchurl {
      url = "https://dl.google.com/linux/earth/deb/pool/main/g/google-earth-pro-stable/google-earth-pro-stable_7.3.6.9345-r0_amd64.deb";
      sha256 = "sha256-iOixqOCfCMjarI4h2APRkgOnJeH/hDemXcj7p1OhLD4=";
    };
  };
  grasscutter = {
    pname = "grasscutter";
    version = "v1.6.1";
    src = fetchurl {
      url = "https://github.com/Grasscutters/Grasscutter/releases/download/v1.6.1/grasscutter.jar";
      sha256 = "sha256-hJ1ZDMrJ9ryVJeuDxG347uplokFwBGHD+gAXgMTcfRU=";
    };
  };
  grasscutter-resources = {
    pname = "grasscutter-resources";
    version = "1dc0fbfd5c9ffb42d7726d4f35759b714b62650f";
    src = fetchgit {
      url = "https://gitlab.com/YuukiPS/GC-Resources.git";
      rev = "1dc0fbfd5c9ffb42d7726d4f35759b714b62650f";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-2PLSETJxkFf+obkaIY4h//i/KE/GCLQ89d/w2J4At8A=";
    };
    date = "2023-06-06";
  };
  hoyo-glyphs = {
    pname = "hoyo-glyphs";
    version = "6a56d5df74ab119d6bf6ceb75917740335b3f24a";
    src = fetchFromGitHub {
      owner = "SpeedyOrc-C";
      repo = "Hoyo-Glyphs";
      rev = "6a56d5df74ab119d6bf6ceb75917740335b3f24a";
      fetchSubmodules = false;
      sha256 = "sha256-PeONd2SjopJSN5+mm43RUrG+xfZFOkTYCUiKrIbbLvg=";
    };
    date = "2023-05-31";
  };
  hoyo-glyphs-star-rail-neue = {
    pname = "hoyo-glyphs-star-rail-neue";
    version = "1.000";
    src = fetchurl {
      url = "https://github.com/SpeedyOrc-C/HoYo-Glyphs/releases/download/star-rail-1.000/StarRailNeue-1.000-otf.zip";
      sha256 = "sha256-zrel+khrPqQC4W61RhqBsfVXUCCbzgDmzRTcXdxZ0Cg=";
    };
  };
  kata-containers = {
    pname = "kata-containers";
    version = "3.1.2";
    src = fetchFromGitHub {
      owner = "kata-containers";
      repo = "kata-containers";
      rev = "3.1.2";
      fetchSubmodules = false;
      sha256 = "sha256-0EPPMczGogYb6es6M2uaXlznRvCSMDonKGGN26k1j/o=";
    };
  };
  kata-image = {
    pname = "kata-image";
    version = "3.1.2";
    src = fetchurl {
      url = "https://github.com/kata-containers/kata-containers/releases/download/3.1.2/kata-static-3.1.2-x86_64.tar.xz";
      sha256 = "sha256-EaKSEkLNrPCKcrvOhUGPwhwncmFc7G895/03HgQYg4g=";
    };
  };
  konnect = {
    pname = "konnect";
    version = "v0.34.0";
    src = fetchFromGitHub {
      owner = "Kopano-dev";
      repo = "konnect";
      rev = "v0.34.0";
      fetchSubmodules = false;
      sha256 = "sha256-y7SD+czD/jK/m0LbFq7qGjwJgBIXfTNrdsA3pzgD2xE=";
    };
  };
  ldap-auth-proxy = {
    pname = "ldap-auth-proxy";
    version = "66a8236af574f554478fe376051b95f61235efc9";
    src = fetchFromGitHub {
      owner = "pinepain";
      repo = "ldap-auth-proxy";
      rev = "66a8236af574f554478fe376051b95f61235efc9";
      fetchSubmodules = false;
      sha256 = "sha256-kV3P3hRmfFH5g+BzjxZGstVHoQ4KMn9DVup5cInin+Y=";
    };
    date = "2020-07-29";
  };
  libltnginx = {
    pname = "libltnginx";
    version = "96698a667740ac45ca4571a04a6cfe39caf926c0";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "libltnginx";
      rev = "96698a667740ac45ca4571a04a6cfe39caf926c0";
      fetchSubmodules = false;
      sha256 = "sha256-A3+CpN0kKmxEw8N0ZQX284qjsSsiy1/RjJp5VvAKP5U=";
    };
    date = "2021-10-02";
  };
  liboqs = {
    pname = "liboqs";
    version = "db08f12b5a96aa6582a82aac7f65cf8a4d8b231f";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "liboqs";
      rev = "db08f12b5a96aa6582a82aac7f65cf8a4d8b231f";
      fetchSubmodules = false;
      sha256 = "sha256-h3mXoGRYgPg0wKQ1u6uFP7wlEUMQd5uIBt4Hr7vjNtA=";
    };
    date = "2023-06-07";
  };
  linux-xanmod = {
    pname = "linux-xanmod";
    version = "6.3.7-xanmod1";
    src = fetchFromGitHub {
      owner = "xanmod";
      repo = "linux";
      rev = "6.3.7-xanmod1";
      fetchSubmodules = false;
      sha256 = "sha256-1Yy73ReS12ADFfaV+1ZV1BvaBlNVFl4UIkO9aqmfZgg=";
    };
  };
  linux-xanmod-6_0 = {
    pname = "linux-xanmod-6_0";
    version = "6.0.12-xanmod1";
    src = fetchFromGitHub {
      owner = "xanmod";
      repo = "linux";
      rev = "6.0.12-xanmod1";
      fetchSubmodules = false;
      sha256 = "sha256-k3fePBhb2zJfvPupdgenkdqG4sHNu2iv6T01EvOgbCg=";
    };
  };
  linux-xanmod-6_1 = {
    pname = "linux-xanmod-6_1";
    version = "6.1.33-xanmod1";
    src = fetchFromGitHub {
      owner = "xanmod";
      repo = "linux";
      rev = "6.1.33-xanmod1";
      fetchSubmodules = false;
      sha256 = "sha256-g3f+/btHMDJgEueY+xfDxq1fw6s5ao7X5D0C0HRasmE=";
    };
  };
  nbfc-linux-lantian = {
    pname = "nbfc-linux-lantian";
    version = "32a49117ca3ff17d7681713a8dc8812323142dcb";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "nbfc-linux";
      rev = "32a49117ca3ff17d7681713a8dc8812323142dcb";
      fetchSubmodules = false;
      sha256 = "sha256-jKuCBKUm32ulgH0+/be2s+CgeBqTww+4K3RETFFCCOc=";
    };
    date = "2022-06-13";
  };
  netboot-xyz-efi = {
    pname = "netboot-xyz-efi";
    version = "2.0.69";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.69/netboot.xyz.efi";
      sha256 = "sha256-jzphIpFtNQAwKeYyIbIrmqd3b6OF3nvwZCOlmg/MasA=";
    };
  };
  netboot-xyz-lkrn = {
    pname = "netboot-xyz-lkrn";
    version = "2.0.69";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.69/netboot.xyz.lkrn";
      sha256 = "sha256-LROl9j7l23wVaUSkn3ih3nXqkd6cyGinDk0Xjf1uugw=";
    };
  };
  netns-exec = {
    pname = "netns-exec";
    version = "aa346fd058d47b238ae1b86250f414bcab2e7927";
    src = fetchFromGitHub {
      owner = "pekman";
      repo = "netns-exec";
      rev = "aa346fd058d47b238ae1b86250f414bcab2e7927";
      fetchSubmodules = true;
      sha256 = "sha256-CnIgzRb58KIvdx7T9LpervSB2Ol6JMxmSM/Ti3K1+Dg=";
    };
    date = "2016-07-30";
  };
  nginx-module-stream-sts = {
    pname = "nginx-module-stream-sts";
    version = "a60cd2fc2bdd689b8b4e12abcf71f7cf5018424a";
    src = fetchFromGitHub {
      owner = "vozlt";
      repo = "nginx-module-stream-sts";
      rev = "a60cd2fc2bdd689b8b4e12abcf71f7cf5018424a";
      fetchSubmodules = false;
      sha256 = "sha256-MsQD2wrmnwMycgC5nUhAiwoxNvwmeDUyivQS/2EMJ4o=";
    };
    date = "2022-09-16";
  };
  nginx-module-sts = {
    pname = "nginx-module-sts";
    version = "3c10d42f8c3f78b6310906eab5c8e066ee753330";
    src = fetchFromGitHub {
      owner = "vozlt";
      repo = "nginx-module-sts";
      rev = "3c10d42f8c3f78b6310906eab5c8e066ee753330";
      fetchSubmodules = false;
      sha256 = "sha256-rAWQDBLW2gQjShC6G+w9tfeML4pFCBTHplcgiW9+Tsc=";
    };
    date = "2022-09-26";
  };
  nginx-module-vts = {
    pname = "nginx-module-vts";
    version = "bd338835463811fe0221db858d865269952aaed9";
    src = fetchFromGitHub {
      owner = "vozlt";
      repo = "nginx-module-vts";
      rev = "bd338835463811fe0221db858d865269952aaed9";
      fetchSubmodules = false;
      sha256 = "sha256-ReTmYGVSOwtnYDMkQDMWwxw09vT4iHYfYZvgd8iBotk=";
    };
    date = "2023-05-26";
  };
  nginx-njs = {
    pname = "nginx-njs";
    version = "0.7.12";
    src = fetchFromGitHub {
      owner = "nginx";
      repo = "njs";
      rev = "0.7.12";
      fetchSubmodules = false;
      sha256 = "sha256-jMf66VxgeeV81XhCU91ICz3RH/M47xNzClYsjyjA+k8=";
    };
  };
  ngx_brotli = {
    pname = "ngx_brotli";
    version = "6e975bcb015f62e1f303054897783355e2a877dc";
    src = fetchFromGitHub {
      owner = "google";
      repo = "ngx_brotli";
      rev = "6e975bcb015f62e1f303054897783355e2a877dc";
      fetchSubmodules = false;
      sha256 = "sha256-G0IDYlvaQzzJ6cNTSGbfuOuSXFp3RsEwIJLGapTbDgo=";
    };
    date = "2022-04-29";
  };
  noise-suppression-for-voice = {
    pname = "noise-suppression-for-voice";
    version = "v1.03";
    src = fetchFromGitHub {
      owner = "werman";
      repo = "noise-suppression-for-voice";
      rev = "v1.03";
      fetchSubmodules = false;
      sha256 = "sha256-1DgrpGYF7G5Zr9vbgtKm/Yv0HSdI7LrFYPSGKYNnNDQ=";
    };
  };
  nullfs = {
    pname = "nullfs";
    version = "0884f87ec01faaee219f59742c14ed3c3945f5c0";
    src = fetchFromGitHub {
      owner = "xrgtn";
      repo = "nullfs";
      rev = "0884f87ec01faaee219f59742c14ed3c3945f5c0";
      fetchSubmodules = false;
      sha256 = "sha256-cokSWBZIeCfdxd+o59BssQetffFSdHrVipQuRLbqNdU=";
    };
    date = "2016-01-28";
  };
  oci-arm-host-capacity = {
    pname = "oci-arm-host-capacity";
    version = "1a655bf6150d64f4f3732f267477ed3e4c6f87d0";
    src = fetchFromGitHub {
      owner = "hitrov";
      repo = "oci-arm-host-capacity";
      rev = "1a655bf6150d64f4f3732f267477ed3e4c6f87d0";
      fetchSubmodules = false;
      sha256 = "sha256-YFOdqbaiKoAdu4nOyzfHtlL9PVy8qEP9rJs6uTUTTdc=";
    };
    date = "2023-04-18";
  };
  onepush = {
    pname = "onepush";
    version = "3a1d5880e3b8f1c5191ee28acd828def15fe135d";
    src = fetchFromGitHub {
      owner = "y1ndan";
      repo = "onepush";
      rev = "3a1d5880e3b8f1c5191ee28acd828def15fe135d";
      fetchSubmodules = false;
      sha256 = "sha256-C6+P55uxG7URiA2ldrVQlOfY4qfjWhX4DYrv6ZmmeXU=";
    };
    date = "2023-05-03";
  };
  openssl-oqs = {
    pname = "openssl-oqs";
    version = "70d83cacc85b0c45331c16bcb9acf6a233e895e3";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "openssl";
      rev = "70d83cacc85b0c45331c16bcb9acf6a233e895e3";
      fetchSubmodules = false;
      sha256 = "sha256-1f2XL4iPPGhWoMai5KXG5hY6WaoYqg6cy/o13ixEPLw=";
    };
    date = "2023-06-10";
  };
  openssl-oqs-provider = {
    pname = "openssl-oqs-provider";
    version = "8c746d7e294d6948c2f361a8f2fa376a63a2db30";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "oqs-provider";
      rev = "8c746d7e294d6948c2f361a8f2fa376a63a2db30";
      fetchSubmodules = false;
      sha256 = "sha256-Mnw1m1eogd33fUYNDwgNBasgK1X9rzeeDu7KVgktHYo=";
    };
    date = "2023-06-09";
  };
  osdlyrics = {
    pname = "osdlyrics";
    version = "0.5.14";
    src = fetchFromGitHub {
      owner = "osdlyrics";
      repo = "osdlyrics";
      rev = "0.5.14";
      fetchSubmodules = false;
      sha256 = "sha256-NVUQLmddXnpryt1AuHSwgPnWkgxWMBNJac09TJ12Yzo=";
    };
  };
  payload-dumper-go = {
    pname = "payload-dumper-go";
    version = "1.2.2";
    src = fetchFromGitHub {
      owner = "ssut";
      repo = "payload-dumper-go";
      rev = "1.2.2";
      fetchSubmodules = false;
      sha256 = "sha256-P20/Nd2YOW9A9/OkpavVRBAi/ueYp812zZvVLnwX67Y=";
    };
  };
  phpmyadmin = {
    pname = "phpmyadmin";
    version = "5.2.1";
    src = fetchurl {
      url = "https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.tar.xz";
      sha256 = "sha256-Nz+Vmd+9ltb+dTFtXa0YnmjDBfKX7fQjd9ud1rQbJVc=";
    };
  };
  phppgadmin = {
    pname = "phppgadmin";
    version = "v7.14.4-mod";
    src = fetchFromGitHub {
      owner = "ReimuHakurei";
      repo = "phppgadmin";
      rev = "v7.14.4-mod";
      fetchSubmodules = false;
      sha256 = "sha256-EfuoeEqzaUvACscAz/oDG2N6GJU6LUWIwH7O3hDYY5s=";
    };
  };
  plangothic-fonts = {
    pname = "plangothic-fonts";
    version = "V0.8.5735";
    src = fetchFromGitHub {
      owner = "Fitzgerald-Porthmouth-Koenigsegg";
      repo = "Plangothic";
      rev = "V0.8.5735";
      fetchSubmodules = false;
      sha256 = "sha256-og98Zz2uuNEWVtGXUkGldx7JNwkqklGhKIfgo14kKvE=";
    };
  };
  qbittorrent-enhanced-edition = {
    pname = "qbittorrent-enhanced-edition";
    version = "release-4.5.3.10";
    src = fetchFromGitHub {
      owner = "c0re100";
      repo = "qBittorrent-Enhanced-Edition";
      rev = "release-4.5.3.10";
      fetchSubmodules = false;
      sha256 = "sha256-ZWIDfX0YGyrEWV/8xlNWL/EsHGSS4nVVyzrOwSmST7I=";
    };
  };
  qemu-user-static-amd64 = {
    pname = "qemu-user-static-amd64";
    version = "7.2+dfsg-7";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_7.2+dfsg-7_amd64.deb";
      sha256 = "sha256-nB/Wit0zgIFTBkjOCMgfjKigH6OpvEChRzSTYiGomzQ=";
    };
  };
  qemu-user-static-arm64 = {
    pname = "qemu-user-static-arm64";
    version = "7.2+dfsg-7";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_7.2+dfsg-7_arm64.deb";
      sha256 = "sha256-ytcvoTK/SN0IO6jTlbke5RSZ2vfkAqab5CsAA0NN+sc=";
    };
  };
  qemu-user-static-armhf = {
    pname = "qemu-user-static-armhf";
    version = "7.2+dfsg-7";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_7.2+dfsg-7_armhf.deb";
      sha256 = "sha256-QKcHxt00vzeCwHyb+gLhDoJUngD5h3FJpAXdtIg/lJM=";
    };
  };
  qemu-user-static-i386 = {
    pname = "qemu-user-static-i386";
    version = "7.2+dfsg-7";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_7.2+dfsg-7_i386.deb";
      sha256 = "sha256-tObRObMxX5c25ittytoWPLgj3lZrYHz4yVRRUEnERBM=";
    };
  };
  qq-amd64 = {
    pname = "qq-amd64";
    version = "ad5b5393/linuxqq_3.1.2-13107";
    src = fetchurl {
      url = "https://dldir1.qq.com/qqfile/qq/QQNT/ad5b5393/linuxqq_3.1.2-13107_amd64.deb";
      sha256 = "sha256-mBfeexWEYpGybFFianUFvlzMv0HoFR4EeFcwlGVXIRA=";
    };
  };
  qq-arm64 = {
    pname = "qq-arm64";
    version = "ad5b5393/linuxqq_3.1.2-13107";
    src = fetchurl {
      url = "https://dldir1.qq.com/qqfile/qq/QQNT/ad5b5393/linuxqq_3.1.2-13107_arm64.deb";
      sha256 = "sha256-V6kR2lb63nnNIEhn64Yg0BYYlz7W0Cw60TwnKaJuLgs=";
    };
  };
  qqmusic = {
    pname = "qqmusic";
    version = "1.1.5";
    src = fetchurl {
      url = "https://dldir1.qq.com/music/clntupate/linux/deb/qqmusic_1.1.5_amd64.deb";
      sha256 = "sha256-wTtO80S8o4/EeVCvBzaN4xtI3+mShTjNHpq41exfP+g=";
    };
  };
  qsc-key-encoder = {
    pname = "qsc-key-encoder";
    version = "1b6289dac9f7caf89d26bad2f1cf3cd628507af2";
    src = fetchFromGitHub {
      owner = "Quantum-Safe-Collaboration";
      repo = "qsc-key-encoder";
      rev = "1b6289dac9f7caf89d26bad2f1cf3cd628507af2";
      fetchSubmodules = false;
      sha256 = "sha256-fslq2BlNtnUve7enWXzWGc8xUh8clmHs+QjPozjinHM=";
    };
    date = "2023-03-30";
  };
  rime-aurora-pinyin = {
    pname = "rime-aurora-pinyin";
    version = "122b46976401995cbafcfc748806985ff3a437a4";
    src = fetchFromGitHub {
      owner = "hosxy";
      repo = "rime-aurora-pinyin";
      rev = "122b46976401995cbafcfc748806985ff3a437a4";
      fetchSubmodules = false;
      sha256 = "sha256-zLzQXSsKwgr7OsyYllyoLNSF9q4mJA5ZYD7v7oagfaE=";
    };
    date = "2022-08-28";
  };
  rime-dict = {
    pname = "rime-dict";
    version = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
    src = fetchFromGitHub {
      owner = "Iorest";
      repo = "rime-dict";
      rev = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
      fetchSubmodules = false;
      sha256 = "sha256-LmY2EQ1VjfX9UJ8ubwoHgxDdJUicSuE0uqxKRnniJ+k=";
    };
    date = "2020-12-26";
  };
  rime-moegirl = {
    pname = "rime-moegirl";
    version = "20230514";
    src = fetchurl {
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20230514/moegirl.dict.yaml";
      sha256 = "sha256-DYBzdHJxHdz0/DAAvuCfgHu6N6SIpmSlCGS1tawASBE=";
    };
  };
  rime-zhwiki = {
    pname = "rime-zhwiki";
    version = "20230605";
    src = fetchurl {
      url = "https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases/download/0.2.4/zhwiki-20230605.dict.yaml";
      sha256 = "sha256-SB2TcvJb/7D3cO3NG34QecMxWMAFwwHCSr3sKHLZa3o=";
    };
  };
  route-chain = {
    pname = "route-chain";
    version = "e68c96e5e4df70c797d5a99acc8226713a22d7f5";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "route-chain";
      rev = "e68c96e5e4df70c797d5a99acc8226713a22d7f5";
      fetchSubmodules = false;
      sha256 = "sha256-StEBgUC3U8KYXt+esohHQ1uc/cvXEVEwrNdbeK+j4uE=";
    };
    date = "2022-12-20";
  };
  sgx-software-enable = {
    pname = "sgx-software-enable";
    version = "7977d6dd373f3a14a615ee9be6f24ecd37c0b43d";
    src = fetchFromGitHub {
      owner = "intel";
      repo = "sgx-software-enable";
      rev = "7977d6dd373f3a14a615ee9be6f24ecd37c0b43d";
      fetchSubmodules = false;
      sha256 = "sha256-xBmFCrnNQq0xKwv7irJFN8YRfBCLmSxtak5dtHFv/xk=";
    };
    date = "2023-01-06";
  };
  smartrent_py = {
    pname = "smartrent_py";
    version = "0.4.0";
    src = fetchurl {
      url = "https://pypi.org/packages/source/s/smartrent.py/smartrent.py-0.4.0.tar.gz";
      sha256 = "sha256-02RMZhytJrRYHGv1ugRY2MMHpk10TcoDgvRkEGIuabo=";
    };
  };
  stream-echo-nginx-module = {
    pname = "stream-echo-nginx-module";
    version = "b7b76b853131b6fa7579d20c2816b4b6abb16bea";
    src = fetchFromGitHub {
      owner = "openresty";
      repo = "stream-echo-nginx-module";
      rev = "b7b76b853131b6fa7579d20c2816b4b6abb16bea";
      fetchSubmodules = false;
      sha256 = "sha256-Q7Zv/e296zPcmB+lshBsEXEhtt7TAfRjGgy09uBGxHA=";
    };
    date = "2016-12-18";
  };
  transmission-web-control = {
    pname = "transmission-web-control";
    version = "5aeb20c141f6c1ca30c0aaae6b861471a48210d8";
    src = fetchFromGitHub {
      owner = "ronggang";
      repo = "transmission-web-control";
      rev = "5aeb20c141f6c1ca30c0aaae6b861471a48210d8";
      fetchSubmodules = false;
      sha256 = "sha256-LbhAxInDEcf5Y9KPBbBVlqNC4qbVV9/KMK1PxcdFezY=";
    };
    date = "2023-05-21";
  };
  undetected-chromedriver = {
    pname = "undetected-chromedriver";
    version = "ebd3508a03fc8c0ede8294cdd232e61ba84c4c5c";
    src = fetchFromGitHub {
      owner = "ultrafunkamsterdam";
      repo = "undetected-chromedriver";
      rev = "ebd3508a03fc8c0ede8294cdd232e61ba84c4c5c";
      fetchSubmodules = false;
      sha256 = "sha256-DAn2lTrdpgjjsiAWAbt3PJPMRp17Gy77gt9o/4PKpJs=";
    };
    date = "2023-06-03";
  };
  vs-rife = {
    pname = "vs-rife";
    version = "v3.1.0";
    src = fetchFromGitHub {
      owner = "HolyWu";
      repo = "vs-rife";
      rev = "v3.1.0";
      fetchSubmodules = false;
      sha256 = "sha256-U3LRcfEw/1Yh5H0xLlNyNy0w8Lf7ZZeIPQMETYrybJE=";
    };
  };
  wechat-uos = {
    pname = "wechat-uos";
    version = "2.1.5";
    src = fetchurl {
      url = "https://home-store-packages.uniontech.com/appstore/pool/appstore/c/com.tencent.weixin/com.tencent.weixin_2.1.5_amd64.deb";
      sha256 = "sha256-vVN7w+oPXNTMJ/g1Rpw/AVLIytMXI+gLieNuddyyIYE=";
    };
  };
  wine-wechat = {
    pname = "wine-wechat";
    version = "3.9.5";
    src = fetchurl {
      url = "https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe?v=3.9.5";
      sha256 = "sha256-2GplldTSmOrhHDI6apio6I2h4F830N4v/3UaOZ3ipcU=";
    };
  };
  xstatic-asciinema-player = {
    pname = "xstatic-asciinema-player";
    version = "2.6.1.1";
    src = fetchurl {
      url = "https://pypi.org/packages/source/X/XStatic-asciinema-player/XStatic-asciinema-player-2.6.1.1.tar.gz";
      sha256 = "sha256-yA6WC067St82Dm6StaCKdWrRBhmNemswetIO8iodfcw=";
    };
  };
  xstatic-font-awesome = {
    pname = "xstatic-font-awesome";
    version = "6.2.1.1";
    src = fetchurl {
      url = "https://pypi.org/packages/source/X/XStatic-Font-Awesome/XStatic-Font-Awesome-6.2.1.1.tar.gz";
      sha256 = "sha256-8HWHEJYShjjy4VOQINgid1TD2IXdaOfubemgEjUHaCg=";
    };
  };
  zstd-nginx-module = {
    pname = "zstd-nginx-module";
    version = "4582ef9abff99879761aca31d6d23173b9a3c2eb";
    src = fetchFromGitHub {
      owner = "tokers";
      repo = "zstd-nginx-module";
      rev = "4582ef9abff99879761aca31d6d23173b9a3c2eb";
      fetchSubmodules = false;
      sha256 = "sha256-8SBU9hJnKtNrwbpioy+Z/mfiVuqAx+U1t64m5tfEy6o=";
    };
    date = "2023-04-06";
  };
}
