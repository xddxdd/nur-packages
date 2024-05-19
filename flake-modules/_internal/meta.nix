{ lib, flake-parts-lib, ... }:
let
  metaJsonOptionModule = flake-parts-lib.mkTransposedPerSystemModule {
    name = "metaJson";
    option = lib.mkOption {
      type = lib.types.str;
      default = { };
    };
    file = ./meta.nix;
  };
  versionJsonOptionModule = flake-parts-lib.mkTransposedPerSystemModule {
    name = "versionJson";
    option = lib.mkOption {
      type = lib.types.str;
      default = { };
    };
    file = ./meta.nix;
  };
in
{
  imports = [
    metaJsonOptionModule
    versionJsonOptionModule
  ];

  perSystem =
    { config, ... }:
    {
      metaJson = builtins.toJSON (
        lib.filterAttrs (_: v: v != null) (builtins.mapAttrs (_: v: v.meta or null) config.legacyPackages)
      );
      versionJson = builtins.toJSON (
        lib.filterAttrs (_: v: v != null) (
          builtins.mapAttrs (_: v: v.version or null) config.legacyPackages
        )
      );
    };
}
