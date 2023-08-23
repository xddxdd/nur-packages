{
  lib,
  sources,
  buildGoModule,
}:
buildGoModule rec {
  inherit (sources.glauth) pname version src;
  vendorSha256 = "sha256-XPEksbrVtAiOC3KYHJkKUfvkryVb1Rxj3kbejcxcIco=";
  modRoot = "v2";

  preBuild = ''
    export GOWORK=off
    export subPackages="."

    mv vendored/toml ../toml
    sed -i "s#vendored/toml#../toml#g" go.mod
  '';

  doCheck = false;

  meta = with lib; {
    description = "A lightweight LDAP server for development, home use, or CI";
    homepage = "https://github.com/glauth/glauth";
    license = licenses.mit;
  };
}
