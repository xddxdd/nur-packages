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
  attic = {
    pname = "attic";
    version = "b43d12082e34bceb26038bdad0438fd68804cfcd";
    src = fetchFromGitHub {
      owner = "zhaofengli";
      repo = "attic";
      rev = "b43d12082e34bceb26038bdad0438fd68804cfcd";
      fetchSubmodules = false;
      sha256 = "sha256-jbQNvkgWGioiC6S39dZVyn6us8p/DlEvm5hQKEYkzDU=";
    };
    date = "2023-08-16";
  };
  baidupcs-go = {
    pname = "baidupcs-go";
    version = "v3.9.4";
    src = fetchFromGitHub {
      owner = "qjfoidnh";
      repo = "BaiduPCS-Go";
      rev = "v3.9.4";
      fetchSubmodules = false;
      sha256 = "sha256-7kjMCoT6r7AgqWtjqfEJnQCpo6CNDK8a3NvSdrMI12E=";
    };
  };
  bepasty = {
    pname = "bepasty";
    version = "1.2.0";
    src = fetchurl {
      url = "https://pypi.org/packages/source/b/bepasty/bepasty-1.2.0.tar.gz";
      sha256 = "sha256-R3bvrl/tOP0S9m6X+MwYK6fMQ51cI6W5AoxyYZ8aZ/w=";
    };
  };
  bilibili = {
    pname = "bilibili";
    version = "1.12.0-1";
    src = fetchurl {
      url = "https://github.com/msojocs/bilibili-linux/releases/download/v1.12.0-1/io.github.msojocs.bilibili_1.12.0-1_amd64.deb";
      sha256 = "sha256-ZTEWd9lrk2eiJfkT8h4BohCvS8Fv0EC+Wya8krV5Gvs=";
    };
  };
  bird-babel-rtt = {
    pname = "bird-babel-rtt";
    version = "0b28efeace71a2c489b178a12b6aa6ed3e6ed4a4";
    src = fetchFromGitHub {
      owner = "NickCao";
      repo = "bird";
      rev = "0b28efeace71a2c489b178a12b6aa6ed3e6ed4a4";
      fetchSubmodules = false;
      sha256 = "sha256-qOI7b3Ut4/JjnFOW+Cjt1ypWJdy2g95qizGgEpr6xTc=";
    };
    date = "2023-06-27";
  };
  bird-lg-go = {
    pname = "bird-lg-go";
    version = "8457b18d4642c6f8c516e9d005adef76d3d62923";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "bird-lg-go";
      rev = "8457b18d4642c6f8c516e9d005adef76d3d62923";
      fetchSubmodules = false;
      sha256 = "sha256-2K+nF6pe3M55du/uexfLUaubbKDWEHPPoQsvUI2u0P0=";
    };
    date = "2023-09-09";
  };
  boringssl-oqs = {
    pname = "boringssl-oqs";
    version = "OQS-BoringSSL-snapshot-2023-06";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "boringssl";
      rev = "OQS-BoringSSL-snapshot-2023-06";
      fetchSubmodules = false;
      sha256 = "sha256-km8QTjtetAA8pYqxkdUyWUotDXZC3+6J9vL1PHWlU7w=";
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
  cockpy = {
    pname = "cockpy";
    version = "00fa2f220fd5e22c14a88b5f6000487b49b071f1";
    src = fetchFromGitHub {
      owner = "Hiro420";
      repo = "CockPY";
      rev = "00fa2f220fd5e22c14a88b5f6000487b49b071f1";
      fetchSubmodules = false;
      sha256 = "sha256-AWjzqOwIRE7ytNowm46h5HhZI9MYT5aWZKwVjx7t00k=";
    };
    date = "2023-04-19";
  };
  cockpy-pyenet = {
    pname = "cockpy-pyenet";
    version = "1726b1d8e22ee1fa53c7560169d8814c7847a447";
    src = fetchFromGitHub {
      owner = "lilmayofuksu";
      repo = "pyenet";
      rev = "1726b1d8e22ee1fa53c7560169d8814c7847a447";
      fetchSubmodules = true;
      sha256 = "sha256-YzFge0S5S6TwCVeCuNgDUmDpwha7Zi8+ZgJ4cdW4AzM=";
    };
    date = "2022-11-20";
  };
  coredns-lantian = {
    pname = "coredns-lantian";
    version = "a411a29f831648afa98aa79b164e790add2d6f14";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "coredns";
      rev = "a411a29f831648afa98aa79b164e790add2d6f14";
      fetchSubmodules = false;
      sha256 = "sha256-LPQWyDzpN1K9tJosDE70QxqP9BDuSVqlTVRYappYUUc=";
    };
    date = "2023-09-02";
  };
  dingtalk = {
    pname = "dingtalk";
    version = "7.0.50.30831";
    src = fetchurl {
      url = "https://dtapp-pub.dingtalk.com/dingtalk-desktop/xc_dingtalk_update/linux_deb/Release/com.alibabainc.dingtalk_7.0.50.30831_amd64.deb";
      sha256 = "sha256-ZO65cSYyNTMoMJj8LbjBcmpf0+M04SFRlVIIrqUB+TE=";
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
  drone-file-secret = {
    pname = "drone-file-secret";
    version = "b69ba503becb41c72a1b724f38a26e7f2c34b110";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "drone-file-secret";
      rev = "b69ba503becb41c72a1b724f38a26e7f2c34b110";
      fetchSubmodules = false;
      sha256 = "sha256-aLr286rV6Ch3T1/r8Ru5JmRH1zDU6cfizGYzPW01snU=";
    };
    date = "2023-06-25";
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
    version = "a96db9e8cf68da687c5e26696df9778162d42ad2";
    src = fetchFromGitHub {
      owner = "KusakabeShi";
      repo = "EtherGuard-VPN";
      rev = "a96db9e8cf68da687c5e26696df9778162d42ad2";
      fetchSubmodules = false;
      sha256 = "sha256-fpjNCJs/Q02pMCG+LhYgX6G0MoIL7z5Hz77FL1Ms6RI=";
    };
    date = "2023-09-20";
  };
  fastapi-dls = {
    pname = "fastapi-dls";
    version = "58ffa752f34b2d4ac71b18a68994ccfebb066c70";
    src = fetchgit {
      url = "https://gitea.publichub.eu/oscar.krause/fastapi-dls.git";
      rev = "58ffa752f34b2d4ac71b18a68994ccfebb066c70";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-EEF/ECu01LUTeHM5jPsZCf6p3NtvMD0qle7kCHhgUco=";
    };
    date = "2023-07-10";
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
    version = "v3.3.6";
    src = fetchFromGitHub {
      owner = "FlareSolverr";
      repo = "FlareSolverr";
      rev = "v3.3.6";
      fetchSubmodules = false;
      sha256 = "sha256-lSOw63yjFdi32N44r3A8Ggvexpov9CnaEP7fD7EBdKc=";
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
    version = "v2.2.0";
    src = fetchFromGitHub {
      owner = "glauth";
      repo = "glauth";
      rev = "v2.2.0";
      fetchSubmodules = false;
      sha256 = "sha256-sQEfDwgqHi+6LQhUxA5RO0hwzB9loTncrOyP8SXatok=";
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
    version = "1.7.1";
    src = fetchurl {
      url = "https://github.com/Grasscutters/Grasscutter/releases/download/v1.7.1/grasscutter-1.7.1.jar";
      sha256 = "sha256-mwnToKqarQmD85snYfrQY85T/Nba0bbTVdd9g3mcAOM=";
    };
  };
  grasscutter-resources = {
    pname = "grasscutter-resources";
    version = "4d19316a003b9a7a6df56fc1a3e4dd634717aec7";
    src = fetchgit {
      url = "https://gitlab.com/YuukiPS/GC-Resources.git";
      rev = "4d19316a003b9a7a6df56fc1a3e4dd634717aec7";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "sha256-rtphaZ7/nFOwdkUiACO6HRDCfc+6gVyb3Vh6oPs7Bko=";
    };
    date = "2023-09-10";
  };
  hoyo-glyphs = {
    pname = "hoyo-glyphs";
    version = "235f46de1815ab385b4d002d2cd6f0985f776f7e";
    src = fetchFromGitHub {
      owner = "SpeedyOrc-C";
      repo = "Hoyo-Glyphs";
      rev = "235f46de1815ab385b4d002d2cd6f0985f776f7e";
      fetchSubmodules = false;
      sha256 = "sha256-qY/iZ/tqWvxvDyAnfpdRj+KgXHfC8LdueScphO6OtaQ=";
    };
    date = "2023-06-30";
  };
  hoyo-glyphs-star-rail-neue = {
    pname = "hoyo-glyphs-star-rail-neue";
    version = "1.100";
    src = fetchurl {
      url = "https://github.com/SpeedyOrc-C/HoYo-Glyphs/releases/download/star-rail-neue-1.100/Star-Rail-Neue-1.100.zip";
      sha256 = "sha256-pOTen4C/z8Z3YS3YBgZK63Cf3YI/M+a6a3P7XuvLhGo=";
    };
  };
  hoyo-glyphs-teyvat-black = {
    pname = "hoyo-glyphs-teyvat-black";
    version = "1.003";
    src = fetchurl {
      url = "https://github.com/SpeedyOrc-C/HoYo-Glyphs/releases/download/teyvat-black-1.003/Teyvat-Black-1.003.zip";
      sha256 = "sha256-AzaZEyxnmi18T2vQSsR+PZ1yGt5pqyvGKioMn2BStqk=";
    };
  };
  hoyo-glyphs-xianzhou-seal = {
    pname = "hoyo-glyphs-xianzhou-seal";
    version = "1.000";
    src = fetchurl {
      url = "https://github.com/SpeedyOrc-C/HoYo-Glyphs/releases/download/xianzhou-seal-1.000/Xianzhou-Seal-1.000.zip";
      sha256 = "sha256-1cXp5ZH6oY6LPdeN7EpiMJzO4SiXmeJTnLLrBPJD4g4=";
    };
  };
  kata-containers = {
    pname = "kata-containers";
    version = "3.1.3";
    src = fetchFromGitHub {
      owner = "kata-containers";
      repo = "kata-containers";
      rev = "3.1.3";
      fetchSubmodules = false;
      sha256 = "sha256-nzXLqnNrYHZSbu+PX0x7GlleeAfCRGvirj7GGcvdaRU=";
    };
  };
  kata-image = {
    pname = "kata-image";
    version = "3.1.3";
    src = fetchurl {
      url = "https://github.com/kata-containers/kata-containers/releases/download/3.1.3/kata-static-3.1.3-x86_64.tar.xz";
      sha256 = "sha256-JmyQYiLIW2eGfeo8m9tYxtoLZWvjop+eC+0ifJOfPyY=";
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
    version = "352cd051f2005e20ceebe28770697a6ebde89c5e";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "liboqs";
      rev = "352cd051f2005e20ceebe28770697a6ebde89c5e";
      fetchSubmodules = false;
      sha256 = "sha256-0SL/TsA3n8QRLdPhHNr5qoUR3JxoUi/NaFIJRY+WEnw=";
    };
    date = "2023-09-22";
  };
  librime-charcode = {
    pname = "librime-charcode";
    version = "3e73214fdf5d162517a74762433f486b70a5c0e1";
    src = fetchFromGitHub {
      owner = "rime";
      repo = "librime-charcode";
      rev = "3e73214fdf5d162517a74762433f486b70a5c0e1";
      fetchSubmodules = false;
      sha256 = "sha256-wfaz4ReCV2w+zRaPbJuZ1lgXQI9Pa1Xz9NuQe+UqcB0=";
    };
    date = "2023-09-03";
  };
  librime-lua = {
    pname = "librime-lua";
    version = "93230b0b4bbc7c86e9eaa551658628f92b8c887f";
    src = fetchFromGitHub {
      owner = "hchunhui";
      repo = "librime-lua";
      rev = "93230b0b4bbc7c86e9eaa551658628f92b8c887f";
      fetchSubmodules = false;
      sha256 = "sha256-q2fQPxlIBGAKKLb6LRevKnf9iqJDGowa1g8Spef9aXI=";
    };
    date = "2023-09-17";
  };
  librime-octagram = {
    pname = "librime-octagram";
    version = "a6ced5a1d623afed17284fbaa395dd3a8b019a14";
    src = fetchFromGitHub {
      owner = "lotem";
      repo = "librime-octagram";
      rev = "a6ced5a1d623afed17284fbaa395dd3a8b019a14";
      fetchSubmodules = false;
      sha256 = "sha256-6HVRrEM0XG3F5hCOvP+lHwUbYA38KmEMiDa2JtofFHI=";
    };
    date = "2023-01-25";
  };
  librime-proto = {
    pname = "librime-proto";
    version = "d92f572379774a202c88e2ea6ad47d9dc040a127";
    src = fetchFromGitHub {
      owner = "lotem";
      repo = "librime-proto";
      rev = "d92f572379774a202c88e2ea6ad47d9dc040a127";
      fetchSubmodules = false;
      sha256 = "sha256-S8fPptHmwQA0soOlVD2/QyaCfIqYFix/1EpduD4UYf8=";
    };
    date = "2022-05-04";
  };
  linux-xanmod = {
    pname = "linux-xanmod";
    version = "6.5.4-xanmod1";
    src = fetchFromGitHub {
      owner = "xanmod";
      repo = "linux";
      rev = "6.5.4-xanmod1";
      fetchSubmodules = false;
      sha256 = "sha256-zT+aU/pOtKgzVOH5Xg4qd88RcDVBmO4af/rgrkUrnfw=";
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
    version = "6.1.54-xanmod1";
    src = fetchFromGitHub {
      owner = "xanmod";
      repo = "linux";
      rev = "6.1.54-xanmod1";
      fetchSubmodules = false;
      sha256 = "sha256-sAVWtpR0fzBcLR82MFREG4Qv/JEXyJ+5MZ/XDVE0fu8=";
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
    version = "2.0.72";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.72/netboot.xyz.efi";
      sha256 = "sha256-9iuCFz+eRXU+QBhC3fnTTtKU+ka1FOTMbkEYnSb4BVE=";
    };
  };
  netboot-xyz-lkrn = {
    pname = "netboot-xyz-lkrn";
    version = "2.0.72";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.72/netboot.xyz.lkrn";
      sha256 = "sha256-oNyqRzKhzI9yD8JyR2yEcGrapDHclfRtiO5y24vwaS8=";
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
    version = "0.8.1";
    src = fetchFromGitHub {
      owner = "nginx";
      repo = "njs";
      rev = "0.8.1";
      fetchSubmodules = false;
      sha256 = "sha256-bFHrcA1ROMwYf+s0EWOXzkru6wvfRLvjvN8BV/r2tMc=";
    };
  };
  ngx_brotli = {
    pname = "ngx_brotli";
    version = "63ca02abdcf79c9e788d2eedcc388d2335902e52";
    src = fetchFromGitHub {
      owner = "google";
      repo = "ngx_brotli";
      rev = "63ca02abdcf79c9e788d2eedcc388d2335902e52";
      fetchSubmodules = false;
      sha256 = "sha256-muMN+Qq/RFhy04jnpDajLn5xetx2iFWj1IiC3rjER7A=";
    };
    date = "2023-09-07";
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
    version = "98ce60974b53ac99b975cf2418aabab7519f1dff";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "openssl";
      rev = "98ce60974b53ac99b975cf2418aabab7519f1dff";
      fetchSubmodules = false;
      sha256 = "sha256-pGXKS5GR/k+x3S7li0xsZIw4dJwyD4i0RY70ueWsgZo=";
    };
    date = "2023-07-19";
  };
  openssl-oqs-provider = {
    pname = "openssl-oqs-provider";
    version = "f3325842e62f1c9fe1c1fb0a0beee0593e4d1efb";
    src = fetchFromGitHub {
      owner = "open-quantum-safe";
      repo = "oqs-provider";
      rev = "f3325842e62f1c9fe1c1fb0a0beee0593e4d1efb";
      fetchSubmodules = false;
      sha256 = "sha256-JdMQfu+yDrMN5qPP5bByyEZ75LF4R3wJnLFebz0N2Ik=";
    };
    date = "2023-09-22";
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
    version = "v7.14.5-mod";
    src = fetchFromGitHub {
      owner = "ReimuHakurei";
      repo = "phppgadmin";
      rev = "v7.14.5-mod";
      fetchSubmodules = false;
      sha256 = "sha256-jp6O29JbQr1OeHCmOa2qAGHE5dIBU47BQA7xv7ypqns=";
    };
  };
  plangothic-fonts = {
    pname = "plangothic-fonts";
    version = "V1.8.5746";
    src = fetchFromGitHub {
      owner = "Fitzgerald-Porthmouth-Koenigsegg";
      repo = "Plangothic";
      rev = "V1.8.5746";
      fetchSubmodules = false;
      sha256 = "sha256-PW0P6Ndekmsw6Y1ChCKHSVRxLPtqwYmi4CnrptpfUfE=";
    };
  };
  pterodactyl-wings = {
    pname = "pterodactyl-wings";
    version = "v1.11.7";
    src = fetchFromGitHub {
      owner = "pterodactyl";
      repo = "wings";
      rev = "v1.11.7";
      fetchSubmodules = false;
      sha256 = "sha256-MWeUSlJsKNnV/oZotIne3KN3j+fjKNfPJQb+DbhNYLk=";
    };
  };
  qbittorrent-enhanced-edition = {
    pname = "qbittorrent-enhanced-edition";
    version = "release-4.5.5.10";
    src = fetchFromGitHub {
      owner = "c0re100";
      repo = "qBittorrent-Enhanced-Edition";
      rev = "release-4.5.5.10";
      fetchSubmodules = false;
      sha256 = "sha256-wGEH83zX7u1KnHxKuMbVIhZ/AbNUkSme1leh5lHPLAk=";
    };
  };
  qemu-user-static-amd64 = {
    pname = "qemu-user-static-amd64";
    version = "8.1.0+ds-6";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_8.1.0+ds-6_amd64.deb";
      sha256 = "sha256-ql6oTdc4d7av+ze2lcs01d6yWoIq6S27eMg/8bgmpQw=";
    };
  };
  qemu-user-static-arm64 = {
    pname = "qemu-user-static-arm64";
    version = "8.1.0+ds-6";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_8.1.0+ds-6_arm64.deb";
      sha256 = "sha256-sVCDEKu9ciO/JhUwjsZzswxOa6Yv6SWzEgNE5Mjp7PI=";
    };
  };
  qemu-user-static-armhf = {
    pname = "qemu-user-static-armhf";
    version = "8.1.0+ds-6";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_8.1.0+ds-6_armhf.deb";
      sha256 = "sha256-Hl8jitu4nsqNUD7p1XhhcnP5nx5pN3gruxo32BrKpr0=";
    };
  };
  qemu-user-static-i386 = {
    pname = "qemu-user-static-i386";
    version = "8.1.0+ds-6";
    src = fetchurl {
      url = "http://ftp.debian.org/debian/pool/main/q/qemu/qemu-user-static_8.1.0+ds-6_i386.deb";
      sha256 = "sha256-IM70O/xh9ZVqAqirz7v1iQLoqkev7h0fXYXgqmnH2Ng=";
    };
  };
  qq-amd64 = {
    pname = "qq-amd64";
    version = "b69de82d/linuxqq_3.2.1-17153";
    src = fetchurl {
      url = "https://dldir1.qq.com/qqfile/qq/QQNT/b69de82d/linuxqq_3.2.1-17153_amd64.deb";
      sha256 = "sha256-+GjTjv0K2vnlkb46KhMvRRFWuIEBz23Lg3QhiA7QzkA=";
    };
  };
  qq-arm64 = {
    pname = "qq-arm64";
    version = "b69de82d/linuxqq_3.2.1-17153";
    src = fetchurl {
      url = "https://dldir1.qq.com/qqfile/qq/QQNT/b69de82d/linuxqq_3.2.1-17153_arm64.deb";
      sha256 = "sha256-BtmmVpKZF15aU7RRmXl9g5leg2jz5sT4vYXluq9aIYk=";
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
  rime-ice = {
    pname = "rime-ice";
    version = "34fbc4043e780049de7ddf62e1aeb57fa369204b";
    src = fetchFromGitHub {
      owner = "iDvel";
      repo = "rime-ice";
      rev = "34fbc4043e780049de7ddf62e1aeb57fa369204b";
      fetchSubmodules = false;
      sha256 = "sha256-jkknQv58AhB0dcX7b/qvzbZsE3UToCHBi6bpj79oxqE=";
    };
    date = "2023-09-22";
  };
  rime-moegirl = {
    pname = "rime-moegirl";
    version = "20230914";
    src = fetchurl {
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20230914/moegirl.dict.yaml";
      sha256 = "sha256-f4H0gV4fFNwY1rAUz80u84caRu92a/D1yi9XmpWegy0=";
    };
  };
  rime-zhwiki = {
    pname = "rime-zhwiki";
    version = "20230823";
    src = fetchurl {
      url = "https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases/download/0.2.4/zhwiki-20230823.dict.yaml";
      sha256 = "sha256-2cx+enR+2lK0o+pYoP8CQg3qd2+nBpQVZhDj4pEPQjU=";
    };
  };
  route-chain = {
    pname = "route-chain";
    version = "8922b56c70f92f29a9bbd72a4e8a13fd8b8c4197";
    src = fetchFromGitHub {
      owner = "xddxdd";
      repo = "route-chain";
      rev = "8922b56c70f92f29a9bbd72a4e8a13fd8b8c4197";
      fetchSubmodules = false;
      sha256 = "sha256-nliVHuZ8MmirgQQAaaWl92nbx6zQhX+pXXimM+II0JY=";
    };
    date = "2023-09-09";
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
  soggy = {
    pname = "soggy";
    version = "2736cb094a51d186dabf2204a7599e9b8118f8dd";
    src = fetchFromGitHub {
      owner = "LDAsuku";
      repo = "soggy";
      rev = "2736cb094a51d186dabf2204a7599e9b8118f8dd";
      fetchSubmodules = false;
      sha256 = "sha256-pv/5CxmojkfOwE/r1T2Ow96XkFw/FQvLcY49bWWiEwo=";
    };
    date = "2022-12-14";
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
    version = "cea80717c5a3d95ccf5c40e6e38081d5454ec7a5";
    src = fetchFromGitHub {
      owner = "ultrafunkamsterdam";
      repo = "undetected-chromedriver";
      rev = "cea80717c5a3d95ccf5c40e6e38081d5454ec7a5";
      fetchSubmodules = false;
      sha256 = "sha256-6+aJrxKnZZ6tkajgw0Qx5ZVkO8T56UhYnIH1d0g2qtE=";
    };
    date = "2023-08-25";
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
    version = "3.9.7";
    src = fetchurl {
      url = "https://dldir1.qq.com/weixin/Windows/WeChatSetup.exe?v=3.9.7";
      sha256 = "sha256-esiCE8KzxfHzjnhzUKc+1UWMF/Fhz6mxuono0H/6GHI=";
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
    version = "4.7.0.0";
    src = fetchurl {
      url = "https://pypi.org/packages/source/X/XStatic-Font-Awesome/XStatic-Font-Awesome-4.7.0.0.tar.gz";
      sha256 = "sha256-4B+0gMqqfHlj3LMyikcA5jG+9gcNsOi2hYFtIg5oX2w=";
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
