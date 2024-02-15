{
  writeTextFile,
  callPackage,
  lib,
  _meta,
  newScope,
  packages,
  ...
}: let
  nurPackages =
    builtins.removeAttrs
    (lib.makeScope newScope packages)
    [
      "newScope"
      "callPackage"
      "overrideScope"
      "overrideScope'"
      "packages"
    ];

  inherit (callPackage ../../../helpers/is-buildable.nix {}) isBuildableOnPlatform;

  platforms = ["x86_64-linux" "aarch64-linux"];

  packageNames =
    lib.genAttrs
    platforms
    (platform: builtins.attrNames (lib.filterAttrs (_: isBuildableOnPlatform platform) nurPackages));
in
  writeTextFile rec {
    name = "garnix.yaml";
    text = builtins.toJSON {
      builds.include =
        lib.naturalSort
        (lib.flatten
          (builtins.map
            (platform: (builtins.map (p: "packages.${platform}.${p}") packageNames."${platform}"))
            platforms));
    };
    derivationArgs.passthru.text = text;
    meta = {
      description = "garnix.yaml for Lan Tian's NUR Repo";
      homepage = "https://github.com/xddxdd/nur-packages";
      license = lib.licenses.unlicense;
    };
  }
