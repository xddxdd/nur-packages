# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl }:
{
  bird-lg-go = {
    pname = "bird-lg-go";
    version = "348295b9aa954a92df2cf6b1179846a9486dafc0";
    src = fetchgit {
      url = "https://github.com/xddxdd/bird-lg-go";
      rev = "348295b9aa954a92df2cf6b1179846a9486dafc0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "09l32r57g8p3jb4kbfdcq9y1302nrjnk52b8m5jw5lhwslzikpys";
    };
  };
  boringssl-oqs = {
    pname = "boringssl-oqs";
    version = "OQS-BoringSSL-snapshot-2022-01";
    src = fetchgit {
      url = "https://github.com/open-quantum-safe/boringssl";
      rev = "OQS-BoringSSL-snapshot-2022-01";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0lcxapfqj9b2p8q6f65w91320lvrsyfxr9602hhw2b83c25lxixh";
    };
  };
  drone-vault = {
    pname = "drone-vault";
    version = "v1.2.0";
    src = fetchgit {
      url = "https://github.com/drone/drone-vault";
      rev = "v1.2.0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "000hga6kmlk7vslcq108gys6ff3y7p8kqhkdai3frsiflqrcxaiz";
    };
  };
  genshin-glyphs = {
    pname = "genshin-glyphs";
    version = "4f620a57d6753443fe401c67839a98b118a3dc4d";
    src = fetchgit {
      url = "https://github.com/SpeedyOrc-C/Genshin-Glyphs";
      rev = "4f620a57d6753443fe401c67839a98b118a3dc4d";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1dk6pmy45a31vqhj9ispy1y1ss9qiynzdlkbsvw44lp8y9rg7j82";
    };
  };
  libltnginx = {
    pname = "libltnginx";
    version = "96698a667740ac45ca4571a04a6cfe39caf926c0";
    src = fetchgit {
      url = "https://github.com/xddxdd/libltnginx";
      rev = "96698a667740ac45ca4571a04a6cfe39caf926c0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "159z1bq5cycsik8mzjr25fqs72pkyq2nax63qd26qai4vnj84zq3";
    };
  };
  liboqs = {
    pname = "liboqs";
    version = "0.7.1";
    src = fetchgit {
      url = "https://github.com/open-quantum-safe/liboqs";
      rev = "0.7.1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "18qnsx94b8n0z59402aw9jkxg268bipj8k1shls7xc7kxpihqvcv";
    };
  };
  netboot-xyz-efi = {
    pname = "netboot-xyz-efi";
    version = "2.0.58";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.58/netboot.xyz.efi";
      sha256 = "0417cfj8ndzlgifp5ymcs2zqlb1q8g8p1fsg92bp3xvar3h6b66v";
    };
  };
  netboot-xyz-lkrn = {
    pname = "netboot-xyz-lkrn";
    version = "2.0.58";
    src = fetchurl {
      url = "https://github.com/netbootxyz/netboot.xyz/releases/download/2.0.58/netboot.xyz.lkrn";
      sha256 = "1ybn6r9s02mnnglsakf2dic2lhxkwg59daaphswg9x067nry7pzi";
    };
  };
  netns-exec = {
    pname = "netns-exec";
    version = "aa346fd058d47b238ae1b86250f414bcab2e7927";
    src = fetchgit {
      url = "https://github.com/pekman/netns-exec";
      rev = "aa346fd058d47b238ae1b86250f414bcab2e7927";
      fetchSubmodules = true;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0f7qnmr8plyg91kcq93sx7c83x5fbsxg9lqyfwps5w7r2v6j0wha";
    };
  };
  noise-suppression-for-voice = {
    pname = "noise-suppression-for-voice";
    version = "v0.91";
    src = fetchgit {
      url = "https://github.com/werman/noise-suppression-for-voice";
      rev = "v0.91";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "11pwisbcks7g0mdgcrrv49v3ci1l6m26bbb7f67xz4pr1hai5dwc";
    };
  };
  openssl-oqs = {
    pname = "openssl-oqs";
    version = "OQS-OpenSSL-1_1_1-stable-snapshot-2022-01";
    src = fetchgit {
      url = "https://github.com/open-quantum-safe/openssl";
      rev = "OQS-OpenSSL-1_1_1-stable-snapshot-2022-01";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "08im65hmklssxygmavn8ckibcgppkwrw19y1jk93nbnqnf045kjr";
    };
  };
  osdlyrics = {
    pname = "osdlyrics";
    version = "0.5.10";
    src = fetchgit {
      url = "https://github.com/osdlyrics/osdlyrics";
      rev = "0.5.10";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0dg7p9a4d8lv5c9xlzl0dbcqdcznxy9419hrw4fg4z34a97hin67";
    };
  };
  phpmyadmin = {
    pname = "phpmyadmin";
    version = "5.1.3";
    src = fetchurl {
      url = "https://files.phpmyadmin.net/phpMyAdmin/5.1.3/phpMyAdmin-5.1.3-all-languages.tar.xz";
      sha256 = "0vr9g3a48iv1rs4qxi18p5gsc96hl1rz44wic9lmxzzqq3fzwqn5";
    };
  };
  phppgadmin = {
    pname = "phppgadmin";
    version = "REL_7-13-0";
    src = fetchgit {
      url = "https://github.com/phppgadmin/phppgadmin";
      rev = "REL_7-13-0";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "129q354bgpabh86q335bnra0pzdlnbssxc02gd54s5k982fwxaw7";
    };
  };
  qbittorrent-enhanced-edition = {
    pname = "qbittorrent-enhanced-edition";
    version = "release-4.4.2.10";
    src = fetchgit {
      url = "https://github.com/c0re100/qBittorrent-Enhanced-Edition";
      rev = "release-4.4.2.10";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "00d57kvils4vdkscqly306kpcd3jixsyyvcfhy362pgamdpf738i";
    };
  };
  rime-aurora-pinyin = {
    pname = "rime-aurora-pinyin";
    version = "709398a009e964e17943717007dd4db98b5655b1";
    src = fetchgit {
      url = "https://github.com/hosxy/rime-aurora-pinyin";
      rev = "709398a009e964e17943717007dd4db98b5655b1";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "0lhn6j8rhs771vawxfd36y6mfnngp35jsc21jm39clybql93l5dq";
    };
  };
  rime-dict = {
    pname = "rime-dict";
    version = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
    src = fetchgit {
      url = "https://github.com/Iorest/rime-dict";
      rev = "325ecbda51cd93e07e2fe02e37e5f14d94a4a541";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1s97w9wlcjmcp8sf2jlw90jxs4430w56yblza3yzb3am1l8kcrif";
    };
  };
  rime-moegirl = {
    pname = "rime-moegirl";
    version = "20220218";
    src = fetchurl {
      url = "https://github.com/outloudvi/mw2fcitx/releases/download/20220218/moegirl.dict.yaml";
      sha256 = "1c1467x8pgyhsay037xzisd49rb2p1326awxg2w2m11wvxcnipds";
    };
  };
  rime-zhwiki = {
    pname = "rime-zhwiki";
    version = "20220416";
    src = fetchurl {
      url = "https://github.com/felixonmars/fcitx5-pinyin-zhwiki/releases/download/0.2.4/zhwiki-20220416.dict.yaml";
      sha256 = "1kd3xyy67zwc0ff345jcwcvrfn6z303536bv8anycjnyv0161rka";
    };
  };
  route-chain = {
    pname = "route-chain";
    version = "b2068ce2905588f445ff95a05c00f200ec96d5b5";
    src = fetchgit {
      url = "https://github.com/xddxdd/route-chain";
      rev = "b2068ce2905588f445ff95a05c00f200ec96d5b5";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "199y0mwn9q66mrclrx31hs4pz229im5wanab8pr4ngs2qiri6vh1";
    };
  };
  v2fly-geoip = {
    pname = "v2fly-geoip";
    version = "202205050051";
    src = fetchurl {
      url = "https://github.com/v2fly/geoip/releases/download/202205050051/geoip.dat";
      sha256 = "16ja4544w7zs1lmrczv9q4f7k1srl2hsfybsj0ashvky31agyglp";
    };
  };
  v2fly-geosite = {
    pname = "v2fly-geosite";
    version = "20220505022319";
    src = fetchurl {
      url = "https://github.com/v2fly/domain-list-community/releases/download/20220505022319/dlc.dat";
      sha256 = "08n44z2g3lbicw7svpy92v2jywl9a77ml5r9zifqdq1dfgj8dd6f";
    };
  };
  v2fly-private = {
    pname = "v2fly-private";
    version = "202205050051";
    src = fetchurl {
      url = "https://github.com/v2fly/geoip/releases/download/202205050051/private.dat";
      sha256 = "1s60xrnii6rmi6ca2sbhlnx0x6cmzfxd7g2lbvz0kchfxfnyhlfw";
    };
  };
  xray = {
    pname = "xray";
    version = "v1.5.5";
    src = fetchgit {
      url = "https://github.com/XTLS/Xray-core";
      rev = "v1.5.5";
      fetchSubmodules = false;
      deepClone = false;
      leaveDotGit = false;
      sha256 = "1i3m361gbcp4v6accf1gwxd01x65v15166rl594a5pl7xw18srn7";
    };
  };
}
