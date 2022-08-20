# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub }:
{
  asterisk-alaw16 = {
    pname = "asterisk-alaw16";
    version = "3f81697eec6388a3cdf74743a436ef4faea542d6";
    src = fetchFromGitHub ({
      owner = "traud";
      repo = "asterisk-alaw16";
      rev = "3f81697eec6388a3cdf74743a436ef4faea542d6";
      fetchSubmodules = false;
      sha256 = "sha256-A44u5jR+lBzvovS928DogFY8rxpmyxr9a9TeSa8X6hg=";
    });
  };
  asterisk-amr = {
    pname = "asterisk-amr";
    version = "420ab33f236e15955351e45bf9fbb256228afe21";
    src = fetchFromGitHub ({
      owner = "traud";
      repo = "asterisk-amr";
      rev = "420ab33f236e15955351e45bf9fbb256228afe21";
      fetchSubmodules = false;
      sha256 = "sha256-Q8q2fF7MtMlyrVYABaM9V5C0FJj0g9oihE6TLsoe28E=";
    });
  };
  asterisk-evs = {
    pname = "asterisk-evs";
    version = "c31d342330ddb6e11cb4ac7b516ac5ea409c1fb8";
    src = fetchFromGitHub ({
      owner = "traud";
      repo = "asterisk-evs";
      rev = "c31d342330ddb6e11cb4ac7b516ac5ea409c1fb8";
      fetchSubmodules = false;
      sha256 = "sha256-soayTFbl0FHkH4ZxaeL+ApDsJ2e3CDIIW0KX5rzAAAM=";
    });
  };
  asterisk-g72x = {
    pname = "asterisk-g72x";
    version = "3855cec2ef2667f3e9224006dbaf179575752218";
    src = fetchFromGitHub ({
      owner = "arkadijs";
      repo = "asterisk-g72x";
      rev = "3855cec2ef2667f3e9224006dbaf179575752218";
      fetchSubmodules = false;
      sha256 = "sha256-H6j8zCyId+yTaSo7mmwDSmC64bznkvUgAcQbuNLbc8s=";
    });
  };
  asterisk-gsm-efr = {
    pname = "asterisk-gsm-efr";
    version = "e91ef643a7ff341e1fdaa1c6ff63b3cdc52ac8b4";
    src = fetchFromGitHub ({
      owner = "traud";
      repo = "asterisk-gsm-efr";
      rev = "e91ef643a7ff341e1fdaa1c6ff63b3cdc52ac8b4";
      fetchSubmodules = false;
      sha256 = "sha256-EzQA+j2QBilNWgoPzcNEkf/3XO6XNl8ygDD6Q65tdFk=";
    });
  };
  baidupcs-go = {
    pname = "baidupcs-go";
    version = "v3.8.7";
    src = fetchFromGitHub ({
      owner = "qjfoidnh";
      repo = "BaiduPCS-Go";
      rev = "v3.8.7";
      fetchSubmodules = false;
      sha256 = "sha256-TSHcUWEzh3kZlp+oIdbE55HQ65VgNxsb8AHMNteEhVg=";
    });
  };
  bilibili = {
    pname = "bilibili";
    version = "1.4.1-1";
    src = fetchurl {
      url = "https://github.com/msojocs/bilibili-linux/releases/download/v1.4.1-1/io.github.msojocs.bilibili_1.4.1-1_amd64.deb";
      sha256 = "sha256-A9Tpz3v/JhcE9Smuv+42vAN7CV17OhfUaYuHLrOv7eg=";
    };
  };
  bird-babel-rtt = {
    pname = "bird-babel-rtt";
    version = "6a7ff0bd1f02aa1c13dd32586075a444e69b426a";
    src = fetchFromGitHub ({
      owner = "NickCao";
      repo = "bird";
      rev = "6a7ff0bd1f02aa1c13dd32586075a444e69b426a";
      fetchSubmodules = false;
      sha256 = "sha256-pf7zyzJGaBfoqF/W+hNNUzmN39yINLD4DIe5Q/9iab4=";
    });
  };
  bird-lg-go = {
    pname = "bird-lg-go";
    version = "d029d6684c14336bed1b54daf3021e7b3e25b52e";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "bird-lg-go";
      rev = "d029d6684c14336bed1b54daf3021e7b3e25b52e";
      fetchSubmodules = false;
      sha256 = "sha256-Fv8mybSHquAwMx+gZAyekKuapwSKIN4q26IcP/zmFVM=";
    });
  };
  boringssl-oqs = {
    pname = "boringssl-oqs";
    version = "OQS-BoringSSL-snapshot-2022-01";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "boringssl";
      rev = "OQS-BoringSSL-snapshot-2022-01";
      fetchSubmodules = false;
      sha256 = "sha256-sMdOi2ADLcEhFMCk3J3XeVMgRki8GGcwumIlid1VnVE=";
    });
  };
  brotli = {
    pname = "brotli";
    version = "9801a2c5d6c67c467ffad676ac301379bb877fc3";
    src = fetchFromGitHub ({
      owner = "google";
      repo = "brotli";
      rev = "9801a2c5d6c67c467ffad676ac301379bb877fc3";
      fetchSubmodules = false;
      sha256 = "sha256-kSIQqWxalvyXBJSM8kts9cAKUWlbJDFkTxtFyjUAz2Y=";
    });
  };
  cloudpan189-go = {
    pname = "cloudpan189-go";
    version = "v0.1.2";
    src = fetchFromGitHub ({
      owner = "tickstep";
      repo = "cloudpan189-go";
      rev = "v0.1.2";
      fetchSubmodules = false;
      sha256 = "sha256-NzMEXeTVDamHOewjflUKhYuFjugGjjrFpKye63o7Q7g=";
    });
  };
  drone-vault = {
    pname = "drone-vault";
    version = "v1.2.0";
    src = fetchFromGitHub ({
      owner = "drone";
      repo = "drone-vault";
      rev = "v1.2.0";
      fetchSubmodules = false;
      sha256 = "sha256-P6rOMqYu6uxGVG1CPNE9fjhntH8IBMyo3mfSOo16EAA=";
    });
  };
  etherguard = {
    pname = "etherguard";
    version = "1356780d7d37ad5c44d3d25d2137be6120b8bf87";
    src = fetchFromGitHub ({
      owner = "KusakabeShi";
      repo = "EtherGuard-VPN";
      rev = "1356780d7d37ad5c44d3d25d2137be6120b8bf87";
      fetchSubmodules = false;
      sha256 = "sha256-sIJBWvVC7nF2ZJrI6IQxgqA2svqU4XQ0vbz9zh0HEBE=";
    });
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
  };
  genshinhelper2 = {
    pname = "genshinhelper2";
    version = "e6081815281b0997dee118ae5c834c9d69843c2f";
    src = fetchFromGitHub ({
      owner = "y1ndan";
      repo = "genshinhelper2";
      rev = "e6081815281b0997dee118ae5c834c9d69843c2f";
      fetchSubmodules = false;
      sha256 = "sha256-rj0Lyh68iwAguWruy4G+emTD9qc4boHe7QF4UU5nGa4=";
    });
  };
  glauth = {
    pname = "glauth";
    version = "v2.1.0";
    src = fetchFromGitHub ({
      owner = "glauth";
      repo = "glauth";
      rev = "v2.1.0";
      fetchSubmodules = false;
      sha256 = "sha256-kX/i156WxB2Ply4G0N/cR2KxrkEM/RdVXo0P5KMfHao=";
    });
  };
  hoyo-glyphs = {
    pname = "hoyo-glyphs";
    version = "674cf6a7d17a6239aae06ffbc468c8d30604a263";
    src = fetchFromGitHub ({
      owner = "SpeedyOrc-C";
      repo = "Hoyo-Glyphs";
      rev = "674cf6a7d17a6239aae06ffbc468c8d30604a263";
      fetchSubmodules = false;
      sha256 = "sha256-exmUFWIjQGS6UEpHtpKBHmXYGb15xn0WaiPximjOKz0=";
    });
  };
  konnect = {
    pname = "konnect";
    version = "v0.34.0";
    src = fetchFromGitHub ({
      owner = "Kopano-dev";
      repo = "konnect";
      rev = "v0.34.0";
      fetchSubmodules = false;
      sha256 = "sha256-y7SD+czD/jK/m0LbFq7qGjwJgBIXfTNrdsA3pzgD2xE=";
    });
  };
  libltnginx = {
    pname = "libltnginx";
    version = "96698a667740ac45ca4571a04a6cfe39caf926c0";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "libltnginx";
      rev = "96698a667740ac45ca4571a04a6cfe39caf926c0";
      fetchSubmodules = false;
      sha256 = "sha256-A3+CpN0kKmxEw8N0ZQX284qjsSsiy1/RjJp5VvAKP5U=";
    });
  };
  liboqs = {
    pname = "liboqs";
    version = "0.7.1";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "liboqs";
      rev = "0.7.1";
      fetchSubmodules = false;
      sha256 = "sha256-m20M4+3zsH40hTpMJG9cyIjXp0xcCUBS+cCiRVLXFqM=";
    });
  };
  netboot-xyz-efi = {
    pname = "netboot-xyz-efi";
    version = "2.0.60";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.60/netboot.xyz.efi";
      sha256 = "sha256-E4NiziF1W1U0FcV2KWj3YVCGtbrKI48RDBpSw2NAMc0=";
    };
  };
  netboot-xyz-lkrn = {
    pname = "netboot-xyz-lkrn";
    version = "2.0.60";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.60/netboot.xyz.lkrn";
      sha256 = "sha256-ckdmpWBr7zqwScShThVSfAYpZfvuQbA96WkG841PVpo=";
    };
  };
  netns-exec = {
    pname = "netns-exec";
    version = "aa346fd058d47b238ae1b86250f414bcab2e7927";
    src = fetchFromGitHub ({
      owner = "pekman";
      repo = "netns-exec";
      rev = "aa346fd058d47b238ae1b86250f414bcab2e7927";
      fetchSubmodules = true;
      sha256 = "sha256-CnIgzRb58KIvdx7T9LpervSB2Ol6JMxmSM/Ti3K1+Dg=";
    });
  };
  nginx-module-stream-sts = {
    pname = "nginx-module-stream-sts";
    version = "54494ccd33ddfeb1b458409caf1261d16ba31c27";
    src = fetchFromGitHub ({
      owner = "vozlt";
      repo = "nginx-module-stream-sts";
      rev = "54494ccd33ddfeb1b458409caf1261d16ba31c27";
      fetchSubmodules = false;
      sha256 = "sha256-yquPvEhfY1nb+BLnDDyzC1d4Jp49mO5tonlQM+MMssk=";
    });
  };
  nginx-module-sts = {
    pname = "nginx-module-sts";
    version = "06ea32162654401b08e5e486155b9a2981623298";
    src = fetchFromGitHub ({
      owner = "vozlt";
      repo = "nginx-module-sts";
      rev = "06ea32162654401b08e5e486155b9a2981623298";
      fetchSubmodules = false;
      sha256 = "sha256-HtUWMM6vrxcCOKpnEliNxd3sNGgik6FrAfa/I4L7POA=";
    });
  };
  nginx-module-vts = {
    pname = "nginx-module-vts";
    version = "3c6cf41315bfcb48c35a3a0be81ddba6d0d01dac";
    src = fetchFromGitHub ({
      owner = "vozlt";
      repo = "nginx-module-vts";
      rev = "3c6cf41315bfcb48c35a3a0be81ddba6d0d01dac";
      fetchSubmodules = false;
      sha256 = "sha256-Iff50npAM1WPjiFt3aYtqC7hQL4kqNNqsat/Qo7cYkU=";
    });
  };
  ngx_brotli = {
    pname = "ngx_brotli";
    version = "6e975bcb015f62e1f303054897783355e2a877dc";
    src = fetchFromGitHub ({
      owner = "google";
      repo = "ngx_brotli";
      rev = "6e975bcb015f62e1f303054897783355e2a877dc";
      fetchSubmodules = false;
      sha256 = "sha256-G0IDYlvaQzzJ6cNTSGbfuOuSXFp3RsEwIJLGapTbDgo=";
    });
  };
  noise-suppression-for-voice = {
    pname = "noise-suppression-for-voice";
    version = "v1.03";
    src = fetchFromGitHub ({
      owner = "werman";
      repo = "noise-suppression-for-voice";
      rev = "v1.03";
      fetchSubmodules = false;
      sha256 = "sha256-1DgrpGYF7G5Zr9vbgtKm/Yv0HSdI7LrFYPSGKYNnNDQ=";
    });
  };
  nullfs = {
    pname = "nullfs";
    version = "0884f87ec01faaee219f59742c14ed3c3945f5c0";
    src = fetchFromGitHub ({
      owner = "xrgtn";
      repo = "nullfs";
      rev = "0884f87ec01faaee219f59742c14ed3c3945f5c0";
      fetchSubmodules = false;
      sha256 = "sha256-cokSWBZIeCfdxd+o59BssQetffFSdHrVipQuRLbqNdU=";
    });
  };
  onepush = {
    pname = "onepush";
    version = "085ceeef728a870f604ba664ba7c9e271ea30808";
    src = fetchFromGitHub ({
      owner = "y1ndan";
      repo = "onepush";
      rev = "085ceeef728a870f604ba664ba7c9e271ea30808";
      fetchSubmodules = false;
      sha256 = "sha256-+aHnbuxXL14XRxCfsPPJkDEAU7RsEF+jO6mAbNgiJwc=";
    });
  };
  openssl-oqs = {
    pname = "openssl-oqs";
    version = "e9160975eeb9796ff3550e8c2c35db63157a409b";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "openssl";
      rev = "e9160975eeb9796ff3550e8c2c35db63157a409b";
      fetchSubmodules = false;
      sha256 = "sha256-Yw5G9yFxOKOxzE2ZdfER8HAqK1KAEH1DKbLkrbClr1o=";
    });
  };
  openssl-oqs-provider = {
    pname = "openssl-oqs-provider";
    version = "3f3d8a8cf331c73a26fe93a598273997cb54eb4f";
    src = fetchFromGitHub ({
      owner = "open-quantum-safe";
      repo = "oqs-provider";
      rev = "3f3d8a8cf331c73a26fe93a598273997cb54eb4f";
      fetchSubmodules = false;
      sha256 = "sha256-i3R9xfPmdFrF1jMR+iN8dd9SrpTFr7ffl34Ri7VDh40=";
    });
  };
  osdlyrics = {
    pname = "osdlyrics";
    version = "0.5.11";
    src = fetchFromGitHub ({
      owner = "osdlyrics";
      repo = "osdlyrics";
      rev = "0.5.11";
      fetchSubmodules = false;
      sha256 = "sha256-VxLNaNe4hFwgSW4JEF1T4BWC2NwiOgfwVGiAIOszfGE=";
    });
  };
  phpmyadmin = {
    pname = "phpmyadmin";
    version = "5.2.0";
    src = fetchurl {
      url = "https://files.phpmyadmin.net/phpMyAdmin/5.2.0/phpMyAdmin-5.2.0-all-languages.tar.xz";
      sha256 = "sha256-ZtoxyilfBhgqw/Lm6WBX3IJMRZuu30sp3m7Q074DkjA=";
    };
  };
  phppgadmin = {
    pname = "phppgadmin";
    version = "v7.14.2-mod";
    src = fetchFromGitHub ({
      owner = "ReimuHakurei";
      repo = "phppgadmin";
      rev = "v7.14.2-mod";
      fetchSubmodules = false;
      sha256 = "sha256-ST3m5SZ94K/EAP0gltDfJfDeXCyBDthntz7OetH9Ips=";
    });
  };
  qbittorrent-enhanced-edition = {
    pname = "qbittorrent-enhanced-edition";
    version = "release-4.4.3.12";
    src = fetchFromGitHub ({
      owner = "c0re100";
      repo = "qBittorrent-Enhanced-Edition";
      rev = "release-4.4.3.12";
      fetchSubmodules = false;
      sha256 = "sha256-c2+QK+ieXIhh8/K04U3kCIqFXf5yce9xZelsnVMS3qk=";
    });
  };
  rime-aurora-pinyin = {
    pname = "rime-aurora-pinyin";
    version = "709398a009e964e17943717007dd4db98b5655b1";
    src = fetchFromGitHub ({
      owner = "hosxy";
      repo = "rime-aurora-pinyin";
      rev = "709398a009e964e17943717007dd4db98b5655b1";
      fetchSubmodules = false;
      sha256 = "sha256-uBU6EsXLU5ZGlUEwLcu4z1pXjTejuc7VDudomJE0FlI=";
    });
  };
  rime-dict = {
    pname = "rime-dict";
    version = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
    src = fetchFromGitHub ({
      owner = "Iorest";
      repo = "rime-dict";
      rev = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
      fetchSubmodules = false;
      sha256 = "sha256-LmY2EQ1VjfX9UJ8ubwoHgxDdJUicSuE0uqxKRnniJ+k=";
    });
  };
  rime-moegirl = {
    pname = "rime-moegirl";
    version = "20220218";
    src = fetchurl {
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20220218/moegirl.dict.yaml";
      sha256 = "sha256-ut1oWd88hCq4eJ0rI0a4YuVEmo6/nwG80tC/i/oxJLA=";
    };
  };
  rime-zhwiki = {
    pname = "rime-zhwiki";
    version = "20220722";
    src = fetchurl {
      url = "https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases/download/0.2.4/zhwiki-20220722.dict.yaml";
      sha256 = "sha256-swROyS8iqbgkdxhvv/+a9v8r3xgBIWO2LC7pmfRTxcY=";
    };
  };
  route-chain = {
    pname = "route-chain";
    version = "2ad303d7eb8aa35aced19b1baf757a0a78b3b843";
    src = fetchFromGitHub ({
      owner = "xddxdd";
      repo = "route-chain";
      rev = "2ad303d7eb8aa35aced19b1baf757a0a78b3b843";
      fetchSubmodules = false;
      sha256 = "sha256-uzudFMeBtgKRPUiaUaSiExTLWTcxfp0VVe/IW9eDxAg=";
    });
  };
  stream-echo-nginx-module = {
    pname = "stream-echo-nginx-module";
    version = "b7b76b853131b6fa7579d20c2816b4b6abb16bea";
    src = fetchFromGitHub ({
      owner = "openresty";
      repo = "stream-echo-nginx-module";
      rev = "b7b76b853131b6fa7579d20c2816b4b6abb16bea";
      fetchSubmodules = false;
      sha256 = "sha256-Q7Zv/e296zPcmB+lshBsEXEhtt7TAfRjGgy09uBGxHA=";
    });
  };
  v2fly-geoip = {
    pname = "v2fly-geoip";
    version = "202208180100";
    src = fetchurl {
      url = "https://github.com/v2fly/geoip/releases/download/202208180100/geoip.dat";
      sha256 = "sha256-AkNYl47iDRLyv7nruTXek8ET39NsPXX8qWEdOlovMOg=";
    };
  };
  v2fly-geosite = {
    pname = "v2fly-geosite";
    version = "20220820051407";
    src = fetchurl {
      url = "https://github.com/v2fly/domain-list-community/releases/download/20220820051407/dlc.dat";
      sha256 = "sha256-XEcY7p2dGYkxTdPJ2fzHAG02MpaxofPwgPf5ZkB7eaM=";
    };
  };
  v2fly-private = {
    pname = "v2fly-private";
    version = "202208180100";
    src = fetchurl {
      url = "https://github.com/v2fly/geoip/releases/download/202208180100/private.dat";
      sha256 = "sha256-3FHoresOsgn+XlS807r7lZkOuqVwaaGYiTWbGG3uwOg=";
    };
  };
  xray = {
    pname = "xray";
    version = "v1.5.5";
    src = fetchFromGitHub ({
      owner = "XTLS";
      repo = "Xray-core";
      rev = "v1.5.5";
      fetchSubmodules = false;
      sha256 = "sha256-x2aNAu+H3qJIKjQbE0rYxfQAWucvOMaU2eSy9YIZdcQ=";
    });
  };
  zstd-nginx-module = {
    pname = "zstd-nginx-module";
    version = "1e0fa0bfb995e72f8f7e4c0153025c3306f1a5cc";
    src = fetchFromGitHub ({
      owner = "tokers";
      repo = "zstd-nginx-module";
      rev = "1e0fa0bfb995e72f8f7e4c0153025c3306f1a5cc";
      fetchSubmodules = false;
      sha256 = "sha256-dVRK5lG6WSCWE6uMofJxz7Ih87FJJ+x1oyVZkY7iZ6c=";
    });
  };
}
