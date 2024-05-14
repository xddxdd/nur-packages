{
  mkShell,
  lib,
  writeShellScriptBin,
  ...
}:
apps:
mkShell {
  buildInputs = lib.mapAttrsToList (
    n: _v:
    writeShellScriptBin n ''
      exec nix run .#${n} -- "$@"
    ''
  ) apps;
}
