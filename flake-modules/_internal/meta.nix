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
in
{
  imports = [ metaJsonOptionModule ];

  perSystem =
    { config, ... }:
    {
      metaJson = builtins.toJSON (
        lib.filterAttrs (_: v: v != null) (builtins.mapAttrs (_: v: v.meta or null) config.legacyPackages)
      );
    };
}
