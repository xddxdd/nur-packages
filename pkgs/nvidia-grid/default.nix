{
  lib,
  callPackage,
  linux,
  ...
} @ args: let
  mergePkgs = callPackage ../../helpers/merge-pkgs.nix {};
  inherit (callPackage lib/extract.nix {}) extractGridDriver extractVgpuDriver;
  sources = lib.importJSON ./sources.json;

  gridDriver = version: source: let
    pkg = import lib/grid_base.nix {
      version = source.guest.version;
      src = extractGridDriver version source;
      settingsSha256 = sources.guest.settings_hash;
      settingsVersion = sources.guest.settings_version;
      persistencedSha256 = sources.guest.persistenced_hash;
      persistencedVersion = sources.guest.persistenced_version;
    };
  in
    callPackage pkg {kernel = linux;};

  vgpuDriver = version: source: let
    pkg = import lib/vgpu_base.nix {
      version = source.host.version;
      src = extractVgpuDriver version source;
      settingsSha256 = sources.host.settings_hash;
      settingsVersion = sources.host.settings_version;
      persistencedSha256 = sources.host.persistenced_hash;
      persistencedVersion = sources.host.persistenced_version;
    };
  in
    callPackage pkg {kernel = linux;};
in {
  gridSrc = mergePkgs (lib.mapAttrs'
    (k: v:
      lib.nameValuePair
      (builtins.replaceStrings ["."] ["_"] k)
      (extractGridDriver k v))
    sources);

  grid = mergePkgs (lib.mapAttrs'
    (k: v:
      lib.nameValuePair
      (builtins.replaceStrings ["."] ["_"] k)
      (gridDriver k v))
    sources);

  vgpuSrc = mergePkgs (lib.mapAttrs'
    (k: v:
      lib.nameValuePair
      (builtins.replaceStrings ["."] ["_"] k)
      (extractVgpuDriver k v))
    sources);

  vgpu = mergePkgs (lib.mapAttrs'
    (k: v:
      lib.nameValuePair
      (builtins.replaceStrings ["."] ["_"] k)
      (vgpuDriver k v))
    sources);
}
